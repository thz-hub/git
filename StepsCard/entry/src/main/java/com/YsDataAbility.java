package com;

import ohos.aafwk.ability.Ability;
import ohos.aafwk.ability.DataAbilityHelper;
import ohos.aafwk.content.Intent;
import ohos.data.DatabaseHelper;
import ohos.data.dataability.DataAbilityUtils;
import ohos.data.rdb.*;
import ohos.data.resultset.ResultSet;
import ohos.data.dataability.DataAbilityPredicates;
import ohos.hiviewdfx.HiLog;
import ohos.hiviewdfx.HiLogLabel;
import ohos.utils.net.Uri;
import ohos.utils.PacMap;

import java.io.FileDescriptor;

public class YsDataAbility extends Ability {
    private static final HiLogLabel LABEL_LOG = new HiLogLabel(3, 0xD001100, "Demo");
    private static final String DB_NAME = "ysdataability.db";
    private static final String DB_TAB_NAME = "ys";
    private static final String DB_COLUMN_PERSON_ID = "id";
    private static final String DB_COLUMN_NAME = "name";
    private static final String DB_COLUMN_UID = "uid";
    private static final String DB_COLUMN_RESIN = "resin";
    private static final String DB_COLUMN_RETIME = "retime";
    private static final String DB_COLUMN_TISK = "task";
    private static final String DB_COLUMN_COIN = "coin";
    private static final String DB_COLUMN_RECOIN = "recoin";
    private static final String DB_COLUMN_RECTIME = "rectime";
    private static final int DB_VERSION = 1;
    private static final String DB_TAB_NAME2 = "pq";
    private static final String DB_COLUMN_EXPEDITIONS_ID = "id";
    private static final String DB_COLUMN_EXPEDITIONS_ICON = "icon";
    private static final String DB_COLUMN_EXPEDITIONS_TIME = "time";

    private StoreConfig config = StoreConfig.newDefaultConfig(DB_NAME);

    private RdbStore rdbStore;

    private RdbOpenCallback rdbOpenCallback = new RdbOpenCallback() {
        @Override
        public void onCreate(RdbStore store) {
            store.executeSql("create table if not exists "
                    + DB_TAB_NAME + " ("
                    + DB_COLUMN_PERSON_ID + " integer primary key, "
                    + DB_COLUMN_NAME + " text not null, "
                    + DB_COLUMN_UID + " integer, "
                    + DB_COLUMN_RESIN + " integer,"
                    + DB_COLUMN_RETIME + " integer,"
                    + DB_COLUMN_TISK + " integer,"
                    + DB_COLUMN_COIN + " integer,"
                    + DB_COLUMN_RECOIN + " integer,"
                    + DB_COLUMN_RECTIME + " integer");

            store.executeSql("create table if not exists "
                    + DB_TAB_NAME2 + " ("
                    + DB_COLUMN_EXPEDITIONS_ID + " integer primary key, "
                    + DB_COLUMN_EXPEDITIONS_ICON + " text not null, "
                    + DB_COLUMN_EXPEDITIONS_TIME + " integer");

        }

        @Override
        public void onUpgrade(RdbStore store, int oldVersion, int newVersion) {
        }
    };

    public class MainAbilitySlice extends AbilitySlice {
        private static final HiLogLabel LABEL_LOG = new HiLogLabel(3, 0xD001100, "MainAbilitySlice");

        private DataAbilityHelper databaseHelper;


        @Override
    public void onStart(Intent intent) {
        super.onStart(intent);
        super.setUIContent(ResourceTable.Layout_ability_main);
        HiLog.info(LABEL_LOG, "YsDataAbility onStart");
        DatabaseHelper databaseHelper = new DatabaseHelper(this);
        rdbStore = databaseHelper.getRdbStore(config, DB_VERSION, rdbOpenCallback, null);
    }

    @Override
    public ResultSet query(Uri uri, String[] columns, DataAbilityPredicates predicates) {
        RdbPredicates rdbPredicates = DataAbilityUtils.createRdbPredicates(predicates, DB_TAB_NAME);
        ResultSet resultSet = rdbStore.query(rdbPredicates, columns);
        if (resultSet == null) {
            HiLog.info(LABEL_LOG, "resultSet is null");
        }

        return resultSet;
    }

    @Override
    public int insert(Uri uri, ValuesBucket value) {
        HiLog.info(LABEL_LOG, "YsDataAbility insert");
        return 999;
    }

    @Override
    public int delete(Uri uri, DataAbilityPredicates predicates) {
        RdbPredicates rdbPredicates = DataAbilityUtils.createRdbPredicates(predicates, DB_TAB_NAME);
        int index = rdbStore.delete(rdbPredicates);
        HiLog.info(LABEL_LOG, "delete: " + index);
        DataAbilityHelper.creator(this, uri).notifyChange(uri);
        return index;
    }

    @Override
    public int update(Uri uri, ValuesBucket value, DataAbilityPredicates predicates) {
        RdbPredicates rdbPredicates = DataAbilityUtils.createRdbPredicates(predicates, DB_TAB_NAME);
        int index = rdbStore.update(value, rdbPredicates);
        HiLog.info(LABEL_LOG, "update: " + index);
        DataAbilityHelper.creator(this, uri).notifyChange(uri);
        return index;
    }

    @Override
    public FileDescriptor openFile(Uri uri, String mode) {
        return null;
    }

    @Override
    public String[] getFileTypes(Uri uri, String mimeTypeFilter) {
        return new String[0];
    }

    @Override
    public PacMap call(String method, String arg, PacMap extras) {
        return null;
    }

    @Override
    public String getType(Uri uri) {
        return null;
    }


}