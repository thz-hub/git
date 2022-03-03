.class public Lorg/json/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 34
    .param p0, "args"    # [Ljava/lang/String;

    const-string v1, "string"

    const-string v2, "string "

    const-string v3, "double "

    const-string v4, "longer"

    const-string v5, "longer "

    const-string v6, "long   "

    const-string v7, "int    "

    const-string v8, "false"

    const-string v9, "foo"

    const-string v10, "stooges"

    const-string v11, "double"

    const-string v12, "int"

    const-string v13, "long"

    const-string v14, "true"

    const-string v15, "stooge"

    move-object/from16 v16, v10

    const-string v10, "Exception: "

    move-object/from16 v17, v10

    const-string v10, ""

    .line 75
    move-object/from16 v18, v15

    new-instance v15, Lorg/json/Test$1Obj;

    move-object/from16 v19, v1

    const-string v1, "A beany object"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    const-wide/high16 v2, 0x4045000000000000L    # 42.0

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v15, v1, v2, v3, v4}, Lorg/json/Test$1Obj;-><init>(Ljava/lang/String;DZ)V

    move-object v1, v15

    .line 78
    .local v1, "obj":Lorg/json/Test$1Obj;
    :try_start_0
    const-string v3, "<![CDATA[This is a collection of test patterns and examples for org.json.]]>  Ignore the stuff past the end.  "

    invoke-static {v3}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3a

    .line 79
    .local v3, "j":Lorg/json/JSONObject;
    :try_start_1
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const-string v4, "{     \"list of lists\" : [         [1, 2, 3],         [4, 5, 6],     ] }"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_39

    .line 82
    .local v4, "s":Ljava/lang/String;
    :try_start_2
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v15

    .line 83
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_38

    const/4 v2, 0x4

    move-object/from16 v24, v4

    .end local v4    # "s":Ljava/lang/String;
    .local v24, "s":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const-string v4, "<recipe name=\"bread\" prep_time=\"5 mins\" cook_time=\"3 hours\"> <title>Basic bread</title> <ingredient amount=\"8\" unit=\"dL\">Flour</ingredient> <ingredient amount=\"10\" unit=\"grams\">Yeast</ingredient> <ingredient amount=\"4\" unit=\"dL\" state=\"warm\">Water</ingredient> <ingredient amount=\"1\" unit=\"teaspoon\">Salt</ingredient> <instructions> <step>Mix all ingredients together.</step> <step>Knead thoroughly.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Knead again.</step> <step>Place in a bread baking tin.</step> <step>Cover with a cloth, and leave for one hour in warm room.</step> <step>Bake in the oven at 180(degrees)C for 30 minutes.</step> </instructions> </recipe> "
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_37

    .line 87
    .end local v24    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_4
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object v3, v15

    .line 88
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v25, v5

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 91
    invoke-static {v4}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_36

    move-object v3, v5

    .line 92
    :try_start_5
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 96
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_35

    .line 97
    .local v5, "a":Lorg/json/JSONArray;
    :try_start_6
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_34

    move-object/from16 v24, v3

    .end local v3    # "j":Lorg/json/JSONObject;
    .local v24, "j":Lorg/json/JSONObject;
    :try_start_7
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 101
    const-string v3, "<div id=\"demo\" class=\"JSONML\"><p>JSONML is a transformation between <b>JSON</b> and <b>XML</b> that preserves ordering of document features.</p><p>JSONML can work with JSON arrays or JSON objects.</p><p>Three<br/>little<br/>words</p></div>"

    move-object v4, v3

    .line 102
    invoke-static {v4}, Lorg/json/JSONML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_33

    .line 103
    .end local v24    # "j":Lorg/json/JSONObject;
    .restart local v3    # "j":Lorg/json/JSONObject;
    :try_start_8
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_34

    move-object/from16 v26, v5

    .end local v5    # "a":Lorg/json/JSONArray;
    .local v26, "a":Lorg/json/JSONArray;
    :try_start_9
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/JSONML;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 107
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_32

    .line 108
    .end local v26    # "a":Lorg/json/JSONArray;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :try_start_a
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_31

    move-object/from16 v24, v3

    .end local v3    # "j":Lorg/json/JSONObject;
    .restart local v24    # "j":Lorg/json/JSONObject;
    :try_start_b
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 112
    const-string v3, "<person created=\"2006-11-11T19:23\" modified=\"2006-12-31T23:59\">\n <firstName>Robert</firstName>\n <lastName>Smith</lastName>\n <address type=\"home\">\n <street>12345 Sixth Ave</street>\n <city>Anytown</city>\n <state>CA</state>\n <postalCode>98765-4321</postalCode>\n </address>\n </person>"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_30

    move-object v4, v3

    .line 113
    :try_start_c
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2f

    .line 114
    .end local v24    # "j":Lorg/json/JSONObject;
    .restart local v3    # "j":Lorg/json/JSONObject;
    :try_start_d
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2e

    move-object/from16 v26, v4

    .end local v4    # "s":Ljava/lang/String;
    .local v26, "s":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 117
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    const-string v4, "{ \"entity\": { \"imageURL\": \"\", \"name\": \"IXXXXXXXXXXXXX\", \"id\": 12336, \"ratingCount\": null, \"averageRating\": null } }"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2d

    .line 120
    .end local v26    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_f
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2c

    move-object v3, v15

    .line 121
    :try_start_10
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2b

    const/4 v2, 0x2

    move-object/from16 v24, v4

    .end local v4    # "s":Ljava/lang/String;
    .local v24, "s":Ljava/lang/String;
    :try_start_11
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2a

    .line 124
    .local v4, "jj":Lorg/json/JSONStringer;
    :try_start_12
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v15

    const-string v2, "single"

    invoke-virtual {v15, v2}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "MARIE HAA\'S"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "Johnny"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "MARIE HAA\\\'S"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "bar"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "baz"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "quux"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "Thanks, Josh!"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    const-string v15, "obj keys"

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-static {v1}, Lorg/json/JSONObject;->getNames(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_29

    .line 143
    .end local v24    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :try_start_13
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Lorg/json/JSONStringer;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONStringer;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_28

    move-object/from16 v27, v2

    .end local v2    # "s":Ljava/lang/String;
    .local v27, "s":Ljava/lang/String;
    :try_start_14
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_27

    move-object/from16 v28, v3

    .end local v3    # "j":Lorg/json/JSONObject;
    .local v28, "j":Lorg/json/JSONObject;
    :try_start_15
    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_26

    move-object v4, v2

    .line 159
    :try_start_16
    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    .line 160
    const-wide/16 v2, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONWriter;

    .line 161
    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_25

    .line 162
    const/4 v2, 0x0

    :try_start_17
    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_24

    .line 163
    :try_start_18
    invoke-virtual {v4}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    .line 164
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    .line 165
    const-string v2, "empty-array"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->array()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    .line 166
    const-string v2, "answer"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_25

    move-object/from16 v29, v5

    move-object v15, v6

    .end local v5    # "a":Lorg/json/JSONArray;
    .local v29, "a":Lorg/json/JSONArray;
    const-wide/16 v5, 0x2a

    :try_start_19
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONWriter;->value(J)Lorg/json/JSONWriter;

    .line 167
    const-string v2, "null"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_23

    const/4 v3, 0x0

    :try_start_1a
    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_22

    .line 168
    :try_start_1b
    invoke-virtual {v4, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    .line 169
    invoke-virtual {v4, v14}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/json/JSONWriter;->value(Z)Lorg/json/JSONWriter;

    .line 170
    const-string v2, "big"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-wide v5, 0x53e27ed9d50e89b3L    # 1.23456789E96

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    .line 171
    const-string v2, "small"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    const-wide v5, 0x2f576be43f1e4b54L    # 1.23456789E-80

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONWriter;->value(D)Lorg/json/JSONWriter;

    .line 172
    const-string v2, "empty-object"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->object()Lorg/json/JSONWriter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    .line 173
    invoke-virtual {v4, v13}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 174
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONWriter;

    .line 175
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    .line 176
    const-string v2, "two"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 177
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    .line 178
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONWriter;

    .line 179
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    .line 180
    const-wide v5, 0x4058a66666666666L    # 98.6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    .line 181
    const-wide/high16 v5, -0x3fa7000000000000L    # -100.0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    .line 182
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    .line 183
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    .line 184
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    .line 185
    const-string v2, "one"

    invoke-virtual {v4, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    .line 186
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONStringer;->value(D)Lorg/json/JSONWriter;

    .line 187
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONWriter;

    .line 188
    invoke-virtual {v4, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    .line 189
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONWriter;

    .line 190
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v5, 0x1

    aput v5, v2, v3

    const/4 v6, 0x2

    aput v6, v2, v5

    const/4 v5, 0x3

    aput v5, v2, v6

    .line 195
    .local v2, "ar":[I
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 196
    .local v5, "ja":Lorg/json/JSONArray;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    const-string v3, "aString"

    const-string v6, "aNumber"

    move-object/from16 v30, v2

    .end local v2    # "ar":[I
    .local v30, "ar":[I
    const-string v2, "aBoolean"

    filled-new-array {v3, v6, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "sa":[Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_23

    .line 200
    .end local v28    # "j":Lorg/json/JSONObject;
    .restart local v3    # "j":Lorg/json/JSONObject;
    :try_start_1c
    const-string v6, "Testing JSONString interface"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_21

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    const/4 v1, 0x4

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v2    # "sa":[Ljava/lang/String;
    .local v31, "obj":Lorg/json/Test$1Obj;
    .local v32, "sa":[Ljava/lang/String;
    :try_start_1d
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{slashes: \'///\', closetag: \'</script>\', backslash:\'\\\\\', ei: {quotes: \'\"\\\'\'},eo: {a: \'\"quoted\"\', b:\"don\'t\"}, quotes: [\"\'\", \'\"\']}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 204
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{foo: [true, false,9876543210,    0.0, 1.00000001,  1.000000000001, 1.00000000000000001, .00000000000000001, 2.00, 0.1, 2e100, -32,[],{}, \"string\"],   to   : null, op : \'Good\',ten:10} postfix comment"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 213
    const-string v1, "String"

    const-string v2, "98.6"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v1, "JSONObject"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v1, "JSONArray"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const/16 v1, 0x39

    invoke-virtual {v3, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    const-wide v1, 0x45f8ee90ff6c373eL    # 1.2345678901234568E29

    invoke-virtual {v3, v11, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v3, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 220
    const-string v1, "null"

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "bool"

    invoke-virtual {v3, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v1, "zero"
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_20

    move-object v2, v4

    move-object v6, v5

    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "ja":Lorg/json/JSONArray;
    .local v2, "jj":Lorg/json/JSONStringer;
    .local v6, "ja":Lorg/json/JSONArray;
    const-wide/high16 v4, -0x8000000000000000L

    :try_start_1e
    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 223
    const-string v1, "\\u2028"

    const-string v4, "\u2028"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "\\u2029"

    const-string v4, "\u2029"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1f

    move-object v5, v1

    .line 226
    .end local v29    # "a":Lorg/json/JSONArray;
    .local v5, "a":Lorg/json/JSONArray;
    const/16 v1, 0x29a

    :try_start_1f
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1e

    .line 227
    move-object v4, v2

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    const-wide v1, 0x409f47f5c28f5c29L    # 2001.99

    :try_start_20
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 228
    const-string v1, "so \"fine\"."

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    const-string v1, "so <fine>."

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 232
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 233
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 234
    const-string v1, "keys"

    invoke-static {v3}, Lorg/json/JSONObject;->getNames(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1d

    move-object/from16 v23, v4

    const/4 v2, 0x4

    .end local v4    # "jj":Lorg/json/JSONStringer;
    .local v23, "jj":Lorg/json/JSONStringer;
    :try_start_21
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "String"
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1c

    move-object/from16 v28, v5

    .end local v5    # "a":Lorg/json/JSONArray;
    .local v28, "a":Lorg/json/JSONArray;
    :try_start_22
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  bool: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bool"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "to"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  true: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   foo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    op: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "op"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ten: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ten"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  oops: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "oops"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    const-string v1, "<xml one = 1 two=\' \"2\" \'><five></five>First \t&lt;content&gt;<five></five> This is \"content\". <three>  3  </three>JSON does not preserve the sequencing of elements and contents.<three>  III  </three>  <three>  T H R E E</three><four/>Content text is an implied structure in XML. <six content=\"6\"/>JSON does not have implied structure:<seven>7</seven>everything is explicit.<![CDATA[CDATA blocks<are><supported>!]]></xml>"
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1b

    move-object v4, v1

    .line 248
    .end local v27    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :try_start_23
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v3, v1

    .line 249
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 254
    .end local v6    # "ja":Lorg/json/JSONArray;
    .local v1, "ja":Lorg/json/JSONArray;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    const-string v2, "<xml do=\'0\'>uno<a re=\'1\' mi=\'2\'>dos<b fa=\'3\'/>tres<c>true</c>quatro</a>cinqo<d>seis<e/></d></xml>"

    move-object v4, v2

    .line 259
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v1, v2

    .line 260
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    const-string v2, "<mapping><empty/>   <class name = \"Customer\">      <field name = \"ID\" type = \"string\">         <bind-xml name=\"ID\" node=\"attribute\"/>      </field>      <field name = \"FirstName\" type = \"FirstName\"/>      <field name = \"MI\" type = \"MI\"/>      <field name = \"LastName\" type = \"LastName\"/>   </class>   <class name = \"FirstName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"MI\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class>   <class name = \"LastName\">      <field name = \"text\">         <bind-xml name = \"text\" node = \"text\"/>      </field>   </class></mapping>"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    move-object v4, v2

    .line 265
    :try_start_24
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 267
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v1, v2

    .line 271
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 273
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    const-string v2, "<?xml version=\"1.0\" ?><Book Author=\"Anonymous\"><Title>Sample Book</Title><Chapter id=\"1\">This is chapter 1. It is not very long or interesting.</Chapter><Chapter id=\"2\">This is chapter 2. Although it is longer than chapter 1, it is not any more interesting.</Chapter></Book>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 276
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    const-string v2, "<!DOCTYPE bCard \'http://www.cs.caltech.edu/~adam/schemas/bCard\'><bCard><?xml default bCard        firstname = \'\'        lastname  = \'\' company   = \'\' email = \'\' homepage  = \'\'?><bCard        firstname = \'Rohit\'        lastname  = \'Khare\'        company   = \'MCI\'        email     = \'khare@mci.net\'        homepage  = \'http://pest.w3.org/\'/><bCard        firstname = \'Adam\'        lastname  = \'Rifkin\'        company   = \'Caltech Infospheres Project\'        email     = \'adam@cs.caltech.edu\'        homepage  = \'http://www.cs.caltech.edu/~adam/\'/></bCard>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 281
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 283
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    const-string v2, "<?xml version=\"1.0\"?><customer>    <firstName>        <text>Fred</text>    </firstName>    <ID>fbs0001</ID>    <lastName> <text>Scerbo</text>    </lastName>    <MI>        <text>B</text>    </MI></customer>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 286
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 290
    const-string v2, "<!ENTITY tp-address PUBLIC \'-//ABC University::Special Collections Library//TEXT (titlepage: name and address)//EN\' \'tpspcoll.sgm\'><list type=\'simple\'><head>Repository Address </head><item>Special Collections Library</item><item>ABC University</item><item>Main Library, 40 Circle Drive</item><item>Ourtown, Pennsylvania</item><item>17654 USA</item></list>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 291
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    const-string v2, "<test intertag status=ok><empty/>deluxe<blip sweet=true>&amp;&quot;toot&quot;&toot;&#x41;</blip><x>eks</x><w>bonus</w><w>bonus2</w></test>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 296
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    const-string v2, "GET / HTTP/1.0\nAccept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/vnd.ms-powerpoint, application/vnd.ms-excel, application/msword, */*\nAccept-Language: en-us\nUser-Agent: Mozilla/4.0 (compatible; MSIE 5.5; Windows 98; Win 9x 4.90; T312461; Q312461)\nHost: www.nokko.com\nConnection: keep-alive\nAccept-encoding: gzip, deflate\n"

    invoke-static {v2}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 301
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    const-string v2, "HTTP/1.1 200 Oki Doki\nDate: Sun, 26 May 2002 17:38:52 GMT\nServer: Apache/1.3.23 (Unix) mod_perl/1.26\nKeep-Alive: timeout=15, max=100\nConnection: Keep-Alive\nTransfer-Encoding: chunked\nContent-Type: text/html\n"

    invoke-static {v2}, Lorg/json/HTTP;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 306
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    new-instance v2, Lorg/json/JSONObject;

    const-string v5, "{nix: null, nux: false, null: \'null\', \'Request-URI\': \'/\', Method: \'GET\', \'HTTP-Version\': \'HTTP/1.0\'}"

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 311
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNull: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "nix"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   has: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "nix"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/HTTP;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    const-string v2, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>\n\n<SOAP-ENV:Envelope xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/1999/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/1999/XMLSchema\"><SOAP-ENV:Body><ns1:doGoogleSearch xmlns:ns1=\"urn:GoogleSearch\" SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\"><key xsi:type=\"xsd:string\">GOOGLEKEY</key> <q xsi:type=\"xsd:string\">\'+search+\'</q> <start xsi:type=\"xsd:int\">0</start> <maxResults xsi:type=\"xsd:int\">10</maxResults> <filter xsi:type=\"xsd:boolean\">true</filter> <restrict xsi:type=\"xsd:string\"></restrict> <safeSearch xsi:type=\"xsd:boolean\">false</safeSearch> <lr xsi:type=\"xsd:string\"></lr> <ie xsi:type=\"xsd:string\">latin1</ie> <oe xsi:type=\"xsd:string\">latin1</oe></ns1:doGoogleSearch></SOAP-ENV:Body></SOAP-ENV:Envelope>"

    invoke-static {v2}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 337
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    new-instance v2, Lorg/json/JSONObject;

    const-string v5, "{Envelope: {Body: {\"ns1:doGoogleSearch\": {oe: \"latin1\", filter: true, q: \"\'+search+\'\", key: \"GOOGLEKEY\", maxResults: 10, \"SOAP-ENV:encodingStyle\": \"http://schemas.xmlsoap.org/soap/encoding/\", start: 0, ie: \"latin1\", safeSearch:false, \"xmlns:ns1\": \"urn:GoogleSearch\"}}}}"

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 342
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    const-string v2, "  f%oo = b+l=ah  ; o;n%40e = t.wo "

    invoke-static {v2}, Lorg/json/CookieList;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 347
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/CookieList;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    const-string v2, "f%oo=blah; secure ;expires = April 24, 2002"

    invoke-static {v2}, Lorg/json/Cookie;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    .line 352
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/Cookie;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    new-instance v2, Lorg/json/JSONObject;

    const-string v5, "{script: \'It is not allowed in HTML to send a close script tag in a string<script>because it confuses browsers</script>so we insert a backslash before the /\'}"

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 357
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 360
    new-instance v2, Lorg/json/JSONTokener;

    const-string v5, "{op:\'test\', to:\'session\', pre:1}{op:\'test\', to:\'session\', pre:2}"

    invoke-direct {v2, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "jt":Lorg/json/JSONTokener;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    move-object v3, v5

    .line 362
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pre: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "pre"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Lorg/json/JSONTokener;->skipTo(C)C

    move-result v5

    .line 365
    .local v5, "i":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(I)V

    .line 366
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    move-object v3, v6

    .line 367
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const-string v6, "No quotes, \'Single Quotes\', \"Double Quotes\"\n1,\'2\',\"3\"\n,\'It is \"good,\"\', \"It works.\"\n\n"

    invoke-static {v6}, Lorg/json/CDL;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_19

    .line 372
    .end local v28    # "a":Lorg/json/JSONArray;
    .local v6, "a":Lorg/json/JSONArray;
    :try_start_25
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v27, v1

    .end local v1    # "ja":Lorg/json/JSONArray;
    .local v27, "ja":Lorg/json/JSONArray;
    invoke-static {v6}, Lorg/json/CDL;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v29, v2

    const/4 v9, 0x4

    .end local v2    # "jt":Lorg/json/JSONTokener;
    .local v29, "jt":Lorg/json/JSONTokener;
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, " [\"<escape>\", next is an implied null , , ok,] "

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_18

    .line 378
    .end local v6    # "a":Lorg/json/JSONArray;
    .local v1, "a":Lorg/json/JSONArray;
    :try_start_26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 380
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    new-instance v2, Lorg/json/JSONObject;

    const-string v6, "{ fun => with non-standard forms ; forgiving => This package can be used to parse formats that are similar to but not stricting conforming to JSON; why=To make it easier to migrate existing data to JSON,one = [[1.00]]; uno=[[{1=>1}]];\'+\':+6e66 ;pluses=+++;empty = \'\' , \'double\':0.666,true: TRUE, false: FALSE, null=NULL;[true] = [[!,@;*]]; string=>  o. k. ; \r oct=0666; hex=0x666; dec=666; o=0999; noh=0x0x}"

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 384
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 385
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_17

    if-eqz v2, :cond_1

    :try_start_27
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "It\'s all good"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0

    goto :goto_0

    .line 386
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 623
    .end local v5    # "i":I
    .end local v27    # "ja":Lorg/json/JSONArray;
    .end local v29    # "jt":Lorg/json/JSONTokener;
    .end local v30    # "ar":[I
    .end local v32    # "sa":[Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v2, 0x0

    move-object v5, v1

    move-object/from16 v20, v4

    move-object/from16 v4, v23

    move-object v1, v0

    .local v2, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .line 390
    .end local v2    # "it":Ljava/util/Iterator;
    .restart local v5    # "i":I
    .restart local v27    # "ja":Lorg/json/JSONArray;
    .restart local v29    # "jt":Lorg/json/JSONTokener;
    .restart local v30    # "ar":[I
    .restart local v32    # "sa":[Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_28
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    new-instance v2, Lorg/json/JSONObject;

    const-string v6, "dec"

    const-string v8, "oct"

    const-string v9, "hex"

    const-string v14, "missing"

    filled-new-array {v6, v8, v9, v14}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    move-object v3, v2

    .line 392
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Lorg/json/JSONStringer;

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v6}, Lorg/json/JSONStringer;->array()Lorg/json/JSONWriter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONWriter;->endArray()Lorg/json/JSONWriter;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 397
    new-instance v2, Lorg/json/JSONObject;

    const-string v6, "{string: \"98.6\", long: 2147483648, int: 2147483647, longer: 9223372036854775807, double: 9223372036854775808}"

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    .line 398
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 400
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\ngetInt"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v15

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v25

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v22

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v21

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_17

    move-object/from16 v21, v1

    .end local v1    # "a":Lorg/json/JSONArray;
    .local v21, "a":Lorg/json/JSONArray;
    :try_start_29
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_16

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move/from16 v19, v5

    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "i":I
    .local v19, "i":I
    .local v20, "s":Ljava/lang/String;
    :try_start_2a
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\ngetLong"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v4

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v22

    move-object/from16 v22, v6

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\ngetDouble"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    const-string v1, "good sized"

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 422
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "[2147483647, 2147483648, 9223372036854775807, 9223372036854775808]"

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15

    move-object v5, v1

    .line 425
    .end local v21    # "a":Lorg/json/JSONArray;
    .local v5, "a":Lorg/json/JSONArray;
    :try_start_2b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nKeys: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14

    move-object v2, v1

    move-object/from16 v4, v20

    .line 429
    .end local v20    # "s":Ljava/lang/String;
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "s":Ljava/lang/String;
    :goto_1
    :try_start_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 431
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\naccumulate: "

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v1

    .line 437
    const-string v1, "Curly"

    move-object/from16 v6, v18

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v1, "Larry"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v1, "Moe"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v5, v1

    .line 441
    const/4 v1, 0x5

    const-string v7, "Shemp"

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 442
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\nwrite:"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 447
    const-string v1, "<xml empty><a></a><a>1</a><a>22</a><a>333</a></xml>"

    move-object v4, v1

    .line 448
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v3, v1

    .line 449
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    const-string v1, "<book><chapter>Content of the first chapter</chapter><chapter>Content of the second chapter      <chapter>Content of the first subchapter</chapter>      <chapter>Content of the second subchapter</chapter></chapter><chapter>Third Chapter</chapter></book>"

    move-object v4, v1

    .line 453
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v3, v1

    .line 454
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move-object v5, v1

    .line 458
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "c":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 464
    .local v7, "m":Ljava/util/Map;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v3, v8

    .line 465
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object v5, v8

    .line 466
    const-string v8, "Joe DeRita"

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v8, "Shemp"

    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v8, "Curly"

    move-object/from16 v9, v16

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string v8, "Larry"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v8, "Moe"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v8, "stoogearray"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v8, "map"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    .line 473
    const-string v8, "collection"

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Collection;)Lorg/json/JSONObject;

    .line 474
    const-string v8, "array"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 476
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/util/Collection;)Lorg/json/JSONArray;

    .line 477
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    const-string v8, "{plist=Apple; AnimalSmells = { pig = piggish; lamb = lambish; worm = wormy; }; AnimalSounds = { pig = oink; lamb = baa; worm = baa;  Lisa = \"Why is the worm talking like a lamb?\" } ; AnimalColors = { pig = pink; lamb = black; worm = pink; } } "

    move-object v4, v8

    .line 480
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 481
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    const-string v8, " (\"San Francisco\", \"New York\", \"Seoul\", \"London\", \"Seattle\", \"Shanghai\")"

    move-object v4, v8

    .line 484
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 485
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    const-string v8, "<a ichi=\'1\' ni=\'2\'><b>The content of b</b> and <c san=\'3\'>The content of c</c><d>do</d><e></e><d>re</d><f/><d>mi</d></a>"

    move-object v4, v8

    .line 488
    invoke-static {v4}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v3, v8

    .line 490
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v3}, Lorg/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 494
    .end local v27    # "ja":Lorg/json/JSONArray;
    .local v8, "ja":Lorg/json/JSONArray;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v8}, Lorg/json/JSONML;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 499
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\nTesting Exceptions: "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v10, v17

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13

    .line 503
    :try_start_2d
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v9

    .line 504
    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 505
    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 506
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_1

    .line 509
    goto :goto_2

    .line 507
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 508
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2e
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 510
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_13

    .line 512
    :try_start_2f
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/io/PrintStream;->println(D)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2

    .line 515
    goto :goto_3

    .line 513
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 514
    .local v6, "e":Ljava/lang/Exception;
    :try_start_30
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 516
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_13

    .line 518
    :try_start_31
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "howard"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/io/PrintStream;->println(D)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_3

    .line 521
    goto :goto_4

    .line 519
    :catch_3
    move-exception v0

    move-object v6, v0

    .line 520
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_32
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 522
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_13

    .line 524
    :try_start_33
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "howard"

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_4

    .line 527
    goto :goto_5

    .line 525
    :catch_4
    move-exception v0

    move-object v6, v0

    .line 526
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_34
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 528
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_13

    .line 530
    :try_start_35
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/io/PrintStream;->println(D)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_5

    .line 533
    goto :goto_6

    .line 531
    :catch_5
    move-exception v0

    move-object v6, v0

    .line 532
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_36
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 534
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_6
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_13

    .line 536
    :try_start_37
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, -0x1

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_6

    .line 539
    goto :goto_7

    .line 537
    :catch_6
    move-exception v0

    move-object v6, v0

    .line 538
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_38
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 540
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_13

    .line 542
    :try_start_39
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_7

    .line 545
    goto :goto_8

    .line 543
    :catch_7
    move-exception v0

    move-object v6, v0

    .line 544
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3a
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 546
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_13

    .line 548
    :try_start_3b
    const-string v6, "<a><b>    "

    invoke-static {v6}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_8

    move-object v3, v6

    .line 551
    goto :goto_9

    .line 549
    :catch_8
    move-exception v0

    move-object v6, v0

    .line 550
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3c
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 552
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_9
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_13

    .line 554
    :try_start_3d
    const-string v6, "<a></b>    "

    invoke-static {v6}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_9

    move-object v3, v6

    .line 557
    goto :goto_a

    .line 555
    :catch_9
    move-exception v0

    move-object v6, v0

    .line 556
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_3e
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 558
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_a
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_13

    .line 560
    :try_start_3f
    const-string v6, "<a></a    "

    invoke-static {v6}, Lorg/json/XML;->toJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_a

    move-object v3, v6

    .line 563
    goto :goto_b

    .line 561
    :catch_a
    move-exception v0

    move-object v6, v0

    .line 562
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_40
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 564
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_b
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_13

    .line 566
    :try_start_41
    new-instance v6, Lorg/json/JSONArray;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v6, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object v8, v6

    .line 567
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_b

    .line 570
    goto :goto_c

    .line 568
    :catch_b
    move-exception v0

    move-object v6, v0

    .line 569
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_42
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 572
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_c
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    .line 574
    :try_start_43
    const-string v6, "[)"

    move-object v4, v6

    .line 575
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 576
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_c

    .line 579
    goto :goto_d

    .line 577
    :catch_c
    move-exception v0

    move-object v6, v0

    .line 578
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_44
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 581
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_d
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_13

    .line 583
    :try_start_45
    const-string v6, "<xml"

    move-object v4, v6

    .line 584
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v8, v6

    .line 585
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_d

    .line 588
    goto :goto_e

    .line 586
    :catch_d
    move-exception v0

    move-object v6, v0

    .line 587
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_46
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 590
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_e
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_13

    .line 592
    :try_start_47
    const-string v6, "<right></wrong>"

    move-object v4, v6

    .line 593
    invoke-static {v4}, Lorg/json/JSONML;->toJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object v8, v6

    .line 594
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_e

    .line 597
    goto :goto_f

    .line 595
    :catch_e
    move-exception v0

    move-object v6, v0

    .line 596
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_48
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 599
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_f
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_13

    .line 601
    :try_start_49
    const-string v6, "{\"koda\": true, \"koda\": true}"

    move-object v4, v6

    .line 602
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 603
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_f

    .line 606
    goto :goto_10

    .line 604
    :catch_f
    move-exception v0

    move-object v6, v0

    .line 605
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4a
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 608
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_10
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_13

    .line 610
    :try_start_4b
    new-instance v6, Lorg/json/JSONStringer;

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_11

    .line 611
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .local v6, "jj":Lorg/json/JSONStringer;
    :try_start_4c
    invoke-virtual {v6}, Lorg/json/JSONStringer;->object()Lorg/json/JSONWriter;

    move-result-object v9

    const-string v10, "bosanda"

    invoke-virtual {v9, v10}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v9

    const-string v10, "MARIE HAA\'S"

    invoke-virtual {v9, v10}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v9

    const-string v10, "bosanda"

    invoke-virtual {v9, v10}, Lorg/json/JSONWriter;->key(Ljava/lang/String;)Lorg/json/JSONWriter;

    move-result-object v9

    const-string v10, "MARIE HAA\\\'S"

    invoke-virtual {v9, v10}, Lorg/json/JSONWriter;->value(Ljava/lang/Object;)Lorg/json/JSONWriter;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONWriter;->endObject()Lorg/json/JSONWriter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 619
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_10

    .line 622
    goto :goto_12

    .line 620
    :catch_10
    move-exception v0

    move-object v9, v0

    move-object/from16 v33, v6

    move-object v6, v4

    move-object/from16 v4, v33

    goto :goto_11

    .end local v6    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    :catch_11
    move-exception v0

    move-object v9, v0

    move-object v6, v4

    move-object/from16 v4, v23

    .line 621
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .local v4, "jj":Lorg/json/JSONStringer;
    .local v6, "s":Ljava/lang/String;
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_11
    :try_start_4d
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_12

    move-object/from16 v33, v6

    move-object v6, v4

    move-object/from16 v4, v33

    .line 625
    .end local v1    # "c":Ljava/util/Collection;
    .end local v7    # "m":Ljava/util/Map;
    .end local v8    # "ja":Lorg/json/JSONArray;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "i":I
    .end local v29    # "jt":Lorg/json/JSONTokener;
    .end local v30    # "ar":[I
    .end local v32    # "sa":[Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    .local v6, "jj":Lorg/json/JSONStringer;
    :goto_12
    goto/16 :goto_15

    .line 623
    .local v4, "jj":Lorg/json/JSONStringer;
    .local v6, "s":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v6

    goto/16 :goto_14

    .end local v6    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    :catch_13
    move-exception v0

    move-object v1, v0

    move-object/from16 v20, v4

    move-object/from16 v4, v23

    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    :catch_14
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v21    # "a":Lorg/json/JSONArray;
    :catch_15
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_16
    move-exception v0

    move-object/from16 v20, v4

    const/4 v1, 0x0

    .end local v4    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "a":Lorg/json/JSONArray;
    .local v1, "a":Lorg/json/JSONArray;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v20, v4

    const/4 v1, 0x0

    .end local v1    # "a":Lorg/json/JSONArray;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    .restart local v21    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .end local v21    # "a":Lorg/json/JSONArray;
    .restart local v4    # "s":Ljava/lang/String;
    .local v6, "a":Lorg/json/JSONArray;
    :catch_18
    move-exception v0

    move-object/from16 v20, v4

    const/4 v1, 0x0

    .end local v4    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    move-object v2, v1

    move-object v1, v0

    move-object v5, v6

    move-object/from16 v4, v23

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v6    # "a":Lorg/json/JSONArray;
    .end local v20    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v28    # "a":Lorg/json/JSONArray;
    :catch_19
    move-exception v0

    move-object/from16 v20, v4

    const/4 v1, 0x0

    .end local v4    # "s":Ljava/lang/String;
    .restart local v20    # "s":Ljava/lang/String;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    move-object/from16 v5, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_1a
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v4

    move-object/from16 v4, v23

    move-object/from16 v5, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    .local v27, "s":Ljava/lang/String;
    :catch_1b
    move-exception v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    move-object/from16 v20, v27

    move-object/from16 v5, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v28    # "a":Lorg/json/JSONArray;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_1c
    move-exception v0

    move-object/from16 v28, v5

    const/4 v1, 0x0

    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v28    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    move-object/from16 v20, v27

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v28    # "a":Lorg/json/JSONArray;
    .local v4, "jj":Lorg/json/JSONStringer;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_1d
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v28, v5

    const/4 v1, 0x0

    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v28    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v28    # "a":Lorg/json/JSONArray;
    .local v2, "jj":Lorg/json/JSONStringer;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_1e
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v28, v5

    const/4 v1, 0x0

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v28    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    move-object/from16 v20, v27

    .local v2, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v28    # "a":Lorg/json/JSONArray;
    .local v2, "jj":Lorg/json/JSONStringer;
    .local v29, "a":Lorg/json/JSONArray;
    :catch_1f
    move-exception v0

    move-object/from16 v23, v2

    const/4 v1, 0x0

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v4, v23

    move-object/from16 v20, v27

    move-object/from16 v5, v29

    .local v2, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    :catch_20
    move-exception v0

    move-object/from16 v23, v4

    const/4 v1, 0x0

    .end local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v5, v29

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    :catch_21
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v23, v4

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v5, v29

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    .local v28, "j":Lorg/json/JSONObject;
    :catch_22
    move-exception v0

    move-object/from16 v31, v1

    move-object v1, v3

    move-object/from16 v23, v4

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v3, v28

    move-object/from16 v5, v29

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    :catch_23
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v23, v4

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v3, v28

    move-object/from16 v5, v29

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_24
    move-exception v0

    move-object/from16 v31, v1

    move-object v1, v2

    move-object/from16 v23, v4

    move-object/from16 v29, v5

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v3, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_25
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v23, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v23    # "jj":Lorg/json/JSONStringer;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v3, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v23    # "jj":Lorg/json/JSONStringer;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v4    # "jj":Lorg/json/JSONStringer;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_26
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    move-object/from16 v3, v28

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_27
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v28    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v27    # "s":Ljava/lang/String;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .local v2, "s":Ljava/lang/String;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_28
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v27    # "s":Ljava/lang/String;
    .restart local v28    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v27

    .local v2, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v27    # "s":Ljava/lang/String;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    .restart local v24    # "s":Ljava/lang/String;
    :catch_29
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v28    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_2a
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v28    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .restart local v4    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v24    # "s":Ljava/lang/String;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .local v4, "s":Ljava/lang/String;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_2b
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v28, v3

    move-object/from16 v24, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v24    # "s":Ljava/lang/String;
    .restart local v28    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v24    # "s":Ljava/lang/String;
    .end local v28    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .local v4, "s":Ljava/lang/String;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_2c
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v24    # "s":Ljava/lang/String;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v24    # "s":Ljava/lang/String;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v5    # "a":Lorg/json/JSONArray;
    .restart local v26    # "s":Ljava/lang/String;
    :catch_2d
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .restart local v4    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v26

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v26    # "s":Ljava/lang/String;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .local v4, "s":Ljava/lang/String;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_2e
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v26    # "s":Ljava/lang/String;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v26

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v26    # "s":Ljava/lang/String;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .local v4, "s":Ljava/lang/String;
    .restart local v5    # "a":Lorg/json/JSONArray;
    .local v24, "j":Lorg/json/JSONObject;
    :catch_2f
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v26    # "s":Ljava/lang/String;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v3, v24

    move-object/from16 v20, v26

    .restart local v2    # "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v26    # "s":Ljava/lang/String;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .local v4, "s":Ljava/lang/String;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_30
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    .local v2, "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object/from16 v3, v24

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_31
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v3

    move-object/from16 v29, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v24    # "j":Lorg/json/JSONObject;
    .restart local v29    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v29    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .local v26, "a":Lorg/json/JSONArray;
    :catch_32
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v3

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .restart local v24    # "j":Lorg/json/JSONObject;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object/from16 v5, v26

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v26    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_33
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v26, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v26    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object/from16 v3, v24

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v26    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    .restart local v5    # "a":Lorg/json/JSONArray;
    :catch_34
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v5    # "a":Lorg/json/JSONArray;
    .restart local v24    # "j":Lorg/json/JSONObject;
    .restart local v26    # "a":Lorg/json/JSONArray;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto/16 :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v26    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    :catch_35
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v3

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v3    # "j":Lorg/json/JSONObject;
    .restart local v24    # "j":Lorg/json/JSONObject;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .end local v24    # "j":Lorg/json/JSONObject;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .restart local v3    # "j":Lorg/json/JSONObject;
    :catch_36
    move-exception v0

    move-object/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v2, v1

    .restart local v2    # "jj":Lorg/json/JSONStringer;
    move-object/from16 v20, v4

    move-object v4, v2

    move-object v1, v0

    .local v1, "it":Ljava/util/Iterator;
    goto :goto_14

    .end local v2    # "jj":Lorg/json/JSONStringer;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .local v1, "obj":Lorg/json/Test$1Obj;
    .local v24, "s":Ljava/lang/String;
    :catch_37
    move-exception v0

    move-object/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .local v2, "it":Ljava/util/Iterator;
    goto :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v5    # "a":Lorg/json/JSONArray;
    .end local v24    # "s":Ljava/lang/String;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    .local v4, "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v24, v4

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v24    # "s":Ljava/lang/String;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v4, v1

    .local v4, "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    move-object v1, v0

    move-object/from16 v20, v24

    .restart local v2    # "it":Ljava/util/Iterator;
    goto :goto_14

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .end local v24    # "s":Ljava/lang/String;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    :catch_39
    move-exception v0

    move-object/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v4, v1

    .restart local v4    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    .restart local v2    # "it":Ljava/util/Iterator;
    goto :goto_13

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "j":Lorg/json/JSONObject;
    .end local v4    # "jj":Lorg/json/JSONStringer;
    .end local v5    # "a":Lorg/json/JSONArray;
    .end local v31    # "obj":Lorg/json/Test$1Obj;
    .restart local v1    # "obj":Lorg/json/Test$1Obj;
    :catch_3a
    move-exception v0

    move-object/from16 v31, v1

    const/4 v1, 0x0

    .end local v1    # "obj":Lorg/json/Test$1Obj;
    .restart local v31    # "obj":Lorg/json/Test$1Obj;
    move-object v5, v1

    .restart local v5    # "a":Lorg/json/JSONArray;
    move-object v4, v1

    .restart local v4    # "jj":Lorg/json/JSONStringer;
    move-object v2, v1

    .restart local v2    # "it":Ljava/util/Iterator;
    move-object v3, v1

    .restart local v3    # "j":Lorg/json/JSONObject;
    :goto_13
    move-object/from16 v20, v1

    move-object v1, v0

    .line 624
    .local v1, "e":Ljava/lang/Exception;
    .restart local v20    # "s":Ljava/lang/String;
    :goto_14
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v4

    move-object/from16 v4, v20

    .line 626
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v20    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    .local v6, "jj":Lorg/json/JSONStringer;
    :goto_15
    return-void
.end method
