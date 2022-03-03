.class public Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;
.super Ljava/lang/Object;
.source "VersionFSHierarchyMaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 21
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    move-object/from16 v1, p0

    array-length v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 40
    invoke-static {}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->usage()V

    .line 41
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "jdbcUrl":Ljava/lang/String;
    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "jvmVersion":Ljava/lang/String;
    const-string v4, "java.vendor"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "jvmVendor":Ljava/lang/String;
    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "osName":Ljava/lang/String;
    const-string v6, "os.arch"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "osArch":Ljava/lang/String;
    const-string v7, "os.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "osVersion":Ljava/lang/String;
    const-string v8, "com.mysql.jdbc.testsuite.url"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    .end local v0    # "jdbcUrl":Ljava/lang/String;
    .local v8, "jdbcUrl":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MySQL"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "mysqlVersion":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 58
    .local v0, "props":Ljava/util/Properties;
    const-string v10, "allowPublicKeyRetrieval"

    const-string v11, "true"

    invoke-virtual {v0, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    new-instance v10, Lcom/mysql/jdbc/NonRegisteringDriver;

    invoke-direct {v10}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    invoke-virtual {v10, v8, v0}, Lcom/mysql/jdbc/NonRegisteringDriver;->connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v10

    .line 61
    .local v10, "conn":Ljava/sql/Connection;
    invoke-interface {v10}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v11

    const-string v12, "SELECT VERSION()"

    invoke-interface {v11, v12}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v11

    .line 62
    .local v11, "rs":Ljava/sql/ResultSet;
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    .line 63
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v12

    .line 66
    .end local v9    # "mysqlVersion":Ljava/lang/String;
    .end local v10    # "conn":Ljava/sql/Connection;
    .end local v11    # "rs":Ljava/sql/ResultSet;
    .local v0, "mysqlVersion":Ljava/lang/String;
    move-object v9, v0

    goto :goto_0

    .line 64
    .end local v0    # "mysqlVersion":Ljava/lang/String;
    .restart local v9    # "mysqlVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 65
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "no-server-running-on-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/mysql/jdbc/util/VersionFSHierarchyMaker;->removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 68
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, "jvmSubdirName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "osSubdirName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 72
    .local v12, "baseDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 73
    .local v13, "mysqlVersionDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 74
    .local v14, "osVersionDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 76
    .local v15, "jvmVersionDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 78
    const/16 v16, 0x0

    .line 81
    .local v16, "pathOut":Ljava/io/FileOutputStream;
    :try_start_1
    aget-object v0, v1, v2

    .line 82
    .local v0, "propsOutputPath":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 83
    .end local v16    # "pathOut":Ljava/io/FileOutputStream;
    .local v2, "pathOut":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v16

    .line 84
    .local v18, "baseDirStr":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v19, v16

    .line 86
    .local v19, "jvmVersionDirStr":Ljava/lang/String;
    move-object/from16 v20, v0

    move-object/from16 v1, v18

    move-object/from16 v0, v19

    .end local v18    # "baseDirStr":Ljava/lang/String;
    .end local v19    # "jvmVersionDirStr":Ljava/lang/String;
    .local v0, "jvmVersionDirStr":Ljava/lang/String;
    .local v1, "baseDirStr":Ljava/lang/String;
    .local v20, "propsOutputPath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v18, v1

    const/16 v17, 0x1

    .end local v1    # "baseDirStr":Ljava/lang/String;
    .restart local v18    # "baseDirStr":Ljava/lang/String;
    add-int/lit8 v1, v16, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    .end local v0    # "jvmVersionDirStr":Ljava/lang/String;
    .restart local v19    # "jvmVersionDirStr":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v18    # "baseDirStr":Ljava/lang/String;
    .end local v19    # "jvmVersionDirStr":Ljava/lang/String;
    .restart local v0    # "jvmVersionDirStr":Ljava/lang/String;
    .restart local v1    # "baseDirStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v1

    .end local v1    # "baseDirStr":Ljava/lang/String;
    .restart local v18    # "baseDirStr":Ljava/lang/String;
    move-object/from16 v19, v0

    .line 90
    .end local v0    # "jvmVersionDirStr":Ljava/lang/String;
    .restart local v19    # "jvmVersionDirStr":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .end local v18    # "baseDirStr":Ljava/lang/String;
    .end local v19    # "jvmVersionDirStr":Ljava/lang/String;
    .end local v20    # "propsOutputPath":Ljava/lang/String;
    nop

    .line 97
    nop

    .line 93
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 96
    nop

    .line 97
    return-void

    .line 92
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_2

    .end local v2    # "pathOut":Ljava/io/FileOutputStream;
    .restart local v16    # "pathOut":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    .line 94
    :goto_2
    if-eqz v16, :cond_2

    .line 93
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 92
    :cond_2
    throw v0
.end method

.method public static removeWhitespaceChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 100
    if-nez p0, :cond_0

    .line 101
    return-object p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 106
    .local v0, "strLen":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v1, "output":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 110
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :cond_1
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static usage()V
    .locals 2

    .line 125
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Creates a fs hierarchy representing MySQL version, OS version and JVM version."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Stores the full path as \'outputDirectory\' property in file \'directoryPropPath\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java VersionFSHierarchyMaker baseDirectory directoryPropPath jdbcUrlIter"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    return-void
.end method
