.class public Lcom/example/cherisheveryminutemobile/UserDao;
.super Lcom/example/cherisheveryminutemobile/DbOpenHelper;
.source "UserDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/example/cherisheveryminutemobile/DbOpenHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "acountinfo"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "iRow":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 75
    const-string v1, "insert into user(uid, acountinfo) values(?, ?)"

    .line 76
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 77
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 78
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x2

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 79
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 84
    .end local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public addUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "appVertion"    # Ljava/lang/String;
    .param p4, "lastdate"    # Ljava/lang/String;
    .param p5, "DEVICE"    # Ljava/lang/String;
    .param p6, "MODEL"    # Ljava/lang/String;
    .param p7, "RELEASE"    # Ljava/lang/String;
    .param p8, "BRAND"    # Ljava/lang/String;
    .param p9, "SDK"    # Ljava/lang/String;
    .param p10, "DISPLAY"    # Ljava/lang/String;
    .param p11, "androidId"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, "iRow":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 141
    const-string v1, "insert into user(uid, ip, appVertion, lastdate, DEVICE, MODEL, systemVersion, BRAND, SDK, DISPLAY, androidId) values( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 142
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 143
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 144
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x2

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 145
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 146
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x4

    invoke-interface {v2, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 147
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x5

    invoke-interface {v2, v3, p5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 148
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x6

    invoke-interface {v2, v3, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 149
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x7

    invoke-interface {v2, v3, p7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 150
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0x8

    invoke-interface {v2, v3, p8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 151
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0x9

    invoke-interface {v2, v3, p9}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 152
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0xa

    invoke-interface {v2, v3, p10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 153
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0xb

    invoke-interface {v2, v3, p11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 154
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 159
    .end local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public delUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "iRow":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 54
    const-string v1, "delete from user where uid=?"

    .line 55
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 56
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 57
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 60
    .end local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public edtCookie(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "acountinfo"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "iRow":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 97
    const-string v1, "update user set acountinfo=? where uid=?"

    .line 98
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 99
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 100
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x2

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 101
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 104
    .end local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public edtUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "appVertion"    # Ljava/lang/String;
    .param p4, "lastdate"    # Ljava/lang/String;
    .param p5, "DEVICE"    # Ljava/lang/String;
    .param p6, "MODEL"    # Ljava/lang/String;
    .param p7, "RELEASE"    # Ljava/lang/String;
    .param p8, "BRAND"    # Ljava/lang/String;
    .param p9, "SDK"    # Ljava/lang/String;
    .param p10, "DISPLAY"    # Ljava/lang/String;
    .param p11, "androidId"    # Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "iRow":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 172
    const-string v1, "update user set ip=?, appVertion=?, lastdate=?, DEVICE=?, MODEL=?, systemVersion=?, BRAND=?, SDK=?, DISPLAY=?, androidId=? where uid=?"

    .line 173
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 174
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 175
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x2

    invoke-interface {v2, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 176
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 177
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x4

    invoke-interface {v2, v3, p5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 178
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x5

    invoke-interface {v2, v3, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 179
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x6

    invoke-interface {v2, v3, p7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 180
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x7

    invoke-interface {v2, v3, p8}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 181
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0x8

    invoke-interface {v2, v3, p9}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 182
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0x9

    invoke-interface {v2, v3, p10}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 183
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0xa

    invoke-interface {v2, v3, p11}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 184
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/16 v3, 0xb

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 185
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 188
    .end local v1    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getAllUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/example/cherisheveryminutemobile/Userinfo;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/example/cherisheveryminutemobile/Userinfo;>;"
    return-object v0
.end method

.method public getAppInfo()[Ljava/lang/String;
    .locals 8

    .line 197
    const-string v0, ""

    .line 198
    .local v0, "notice":Ljava/lang/String;
    const-string v1, ""

    .line 199
    .local v1, "notice1":Ljava/lang/String;
    const-string v2, ""

    .line 200
    .local v2, "noticeversion":Ljava/lang/String;
    const-string v3, ""

    .line 201
    .local v3, "appvertiion":Ljava/lang/String;
    const-string v4, ""

    .line 204
    .local v4, "update":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 205
    const-string v5, "select * from notice"

    .line 206
    .local v5, "sql":Ljava/lang/String;
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v6, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    sput-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 207
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    sput-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    .line 208
    :goto_0
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 209
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v7, "notice"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 210
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v7, "notice1"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 211
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v7, "noticeversion"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 212
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v7, "appvertiion"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 213
    sget-object v6, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v7, "update"

    invoke-interface {v6, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_0

    .line 217
    .end local v5    # "sql":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v5

    .line 216
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_1
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    aput-object v3, v5, v6

    const/4 v6, 0x4

    aput-object v4, v5, v6

    .line 219
    .local v5, "a":[Ljava/lang/String;
    return-object v5
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .line 114
    const-string v0, "\u8bfb\u53d6cookie"

    .line 116
    .local v0, "cookie":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select cookie from user where uid = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 119
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    .line 121
    :goto_0
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    const-string v3, "cookie"

    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 128
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    .line 27
    .local v0, "item":I
    :try_start_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->getConnection()V

    .line 28
    const-string v1, "select * from user where uid=?"

    .line 29
    .local v1, "sql":Ljava/lang/String;
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    .line 30
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 31
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    sput-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    .line 32
    sget-object v2, Lcom/example/cherisheveryminutemobile/UserDao;->rs:Ljava/sql/ResultSet;

    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 40
    .end local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->closeAll()V

    .line 41
    nop

    .line 42
    return v0

    .line 40
    :goto_1
    invoke-static {}, Lcom/example/cherisheveryminutemobile/UserDao;->closeAll()V

    .line 41
    throw v1
.end method
