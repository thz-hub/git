package com.huawei.cookbook.slice;

import com.huawei.cookbook.ResourceTable;
import ohos.aafwk.ability.AbilitySlice;
import ohos.aafwk.content.Intent;
import ohos.agp.components.Button;
import ohos.agp.components.Component;
import ohos.agp.components.TextField;
import ohos.agp.window.dialog.ToastDialog;
import ohos.app.Context;
import ohos.data.DatabaseHelper;
import ohos.data.preferences.Preferences;

import java.util.Locale;

public class MainAbilitySlice extends AbilitySlice {
    private Context context;
    private Button btnWrite;
    private Button btnRead;
    private Button btnDelete;
    private TextField textFiledFruit;
    private TextField textFiledNumber;
    private String filename;
    private Preferences preferences;
    private DatabaseHelper databaseHelper;

    @Override
    public void onStart(Intent intent) {
        super.onStart(intent);
        super.setUIContent(ResourceTable.Layout_ability_main);
        context = getContext();
        btnWrite = (Button) findComponentById(ResourceTable.Id_write_btn);
        btnRead = (Button) findComponentById(ResourceTable.Id_read_btn);
        btnDelete = (Button) findComponentById(ResourceTable.Id_delete_btn);
        textFiledFruit = (TextField) findComponentById(ResourceTable.Id_text_fruit);
        textFiledNumber = (TextField) findComponentById(ResourceTable.Id_text_number);
        databaseHelper = new DatabaseHelper(context);
        filename = "pdb";
        preferences = databaseHelper.getPreferences(filename);
        btnWrite();
        btnRead();
        btnDelete();
    }

    private void btnWrite() {
        btnWrite.setClickedListener(new Component.ClickedListener() {
            @Override
            public void onClick(Component component) {
                String fruit = textFiledFruit.getText();
                try {
                    int number = Integer.parseInt(textFiledNumber.getText());
                    preferences.putInt("number",number);
                    preferences.putString("fruit",fruit);
                    preferences.flush();
                    new ToastDialog(context).setText("Write to DB file success").show();
                } catch (NumberFormatException e) {
                    new ToastDialog(context).setText("Please input number in Number row").show();
                }
            }
        });
    }

    private void btnRead() {
        btnRead.setClickedListener(new Component.ClickedListener() {
            @Override
            public void onClick(Component component) {
                String string = String.format(Locale.ENGLISH,"Fruit: %s,Number: %d",
                        preferences.getString("fruit", ""),preferences.getInt("number", 0));
                new ToastDialog(context).setText(string).show();
            }
        });
    }

    private void btnDelete() {
        btnDelete.setClickedListener(new Component.ClickedListener() {
            @Override
            public void onClick(Component component) {
                if (databaseHelper.deletePreferences(filename)) {
                    preferences.clear();
                    new ToastDialog(context).setText("Delete DB file success").show();
                } else {
                    new ToastDialog(context).setText("Delete DB file failed").show();
                }
            }
        });
    }
}