.class public Lcom/htc/opensense/social/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# static fields
.field private static final FEATURE_FRIENDSTREAM_DATA_PLUGIN:Ljava/lang/String; = "FriendStreamDataPlugin"

.field public static final RAWQUERY:Landroid/net/Uri; = null

.field public static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static sSenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    .line 22
    :try_start_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const-string v0, "content://com.htc.opensense.plugin/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendStreamPluginComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 9
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 45
    const-string v1, "SELECT A1.%s, A2.%s FROM %s A1, %s A2 WHERE %s A1.%s IN (SELECT A2.%s FROM %s WHERE A2.%s IN (SELECT %s FROM %s WHERE %s=\'%s\')) AND A2.%s=%s"

    const/16 v0, 0xf

    new-array v4, v0, [Ljava/lang/Object;

    const-string v0, "package"

    aput-object v0, v4, v5

    const-string v0, "plugin_class"

    aput-object v0, v4, v8

    const/4 v0, 0x2

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "plugin"

    aput-object v5, v4, v0

    const/4 v5, 0x4

    sget v0, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    const/high16 v8, 0x4000

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x5

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "package_id"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const-string v5, "plugin_pkg"

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string v5, "feature_id"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    const-string v5, "_id"

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string v5, "features"

    aput-object v5, v4, v0

    const/16 v0, 0xb

    const-string v5, "feature"

    aput-object v5, v4, v0

    const/16 v0, 0xc

    const-string v5, "FriendStreamDataPlugin"

    aput-object v5, v4, v0

    const/16 v0, 0xd

    const-string v5, "plugin_meta"

    aput-object v5, v4, v0

    const/16 v0, 0xe

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, sql:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 59
    .local v7, componentName:Landroid/content/ComponentName;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v7, Landroid/content/ComponentName;

    .end local v7           #componentName:Landroid/content/ComponentName;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .restart local v7       #componentName:Landroid/content/ComponentName;
    :cond_0
    if-eqz v6, :cond_1

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    return-object v7

    .line 45
    .end local v3           #sql:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #componentName:Landroid/content/ComponentName;
    :cond_2
    const-string v0, "A2.removed=0 AND"

    goto :goto_0

    .line 64
    .restart local v3       #sql:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_3
    throw v0
.end method

.method public static getFriendStreamPluginTypes(Landroid/content/Context;)[Lcom/htc/opensense/social/PluginDescription;
    .locals 20
    .parameter "context"

    .prologue
    .line 72
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    .line 73
    .local v11, am:Landroid/accounts/AccountManager;
    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v10

    .line 74
    .local v10, ads:[Landroid/accounts/AuthenticatorDescription;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v13, authenticatorDescriptions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;>;"
    move-object v12, v10

    .local v12, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v9, v12, v15

    .line 76
    .local v9, ad:Landroid/accounts/AuthenticatorDescription;
    iget-object v2, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 78
    .end local v9           #ad:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v19, pluginDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/social/PluginDescription;>;"
    const-string v3, "SELECT t1.%s plugin_id, t2.%s, t3.%s feature_id, t3.%s feature_version, t3.%s, t3.%s, t1.%s, t1.%s, t1.%s, t1.%s FROM %s t1, %s t2, %s t3 WHERE t1.%s=t2.%s AND t1.%s=t3.%s AND t3.%s=\'%s\' %s"

    const/16 v2, 0x14

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "package"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "version"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "feature"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "feature_type"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "version"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "plugin_class"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "description"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "plugin_meta"

    aput-object v6, v4, v2

    const/16 v2, 0xa

    const-string v6, "plugin"

    aput-object v6, v4, v2

    const/16 v2, 0xb

    const-string v6, "plugin_pkg"

    aput-object v6, v4, v2

    const/16 v2, 0xc

    const-string v6, "features"

    aput-object v6, v4, v2

    const/16 v2, 0xd

    const-string v6, "package_id"

    aput-object v6, v4, v2

    const/16 v2, 0xe

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/16 v2, 0xf

    const-string v6, "feature_id"

    aput-object v6, v4, v2

    const/16 v2, 0x10

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/16 v2, 0x11

    const-string v6, "feature"

    aput-object v6, v4, v2

    const/16 v2, 0x12

    const-string v6, "FriendStreamDataPlugin"

    aput-object v6, v4, v2

    const/16 v6, 0x13

    sget v2, Lcom/htc/opensense/social/PluginManager;->sSenseVersion:F

    const/high16 v7, 0x4000

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    const-string v2, ""

    :goto_1
    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, sql:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/social/PluginManager;->RAWQUERY:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 93
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 95
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    :cond_1
    const-string v2, "plugin_meta"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, accountType:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accounts/AuthenticatorDescription;

    .line 102
    .restart local v9       #ad:Landroid/accounts/AuthenticatorDescription;
    const-string v2, "package"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 104
    .local v17, packageName:Ljava/lang/String;
    new-instance v18, Lcom/htc/opensense/social/PluginDescription;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1, v9}, Lcom/htc/opensense/social/PluginDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 106
    .local v18, pd:Lcom/htc/opensense/social/PluginDescription;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v9           #ad:Landroid/accounts/AuthenticatorDescription;
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #pd:Lcom/htc/opensense/social/PluginDescription;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 111
    .end local v8           #accountType:Ljava/lang/String;
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_4
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/htc/opensense/social/PluginDescription;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/htc/opensense/social/PluginDescription;

    return-object v2

    .line 80
    .end local v5           #sql:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    :cond_5
    const-string v2, "AND t1.removed=0"

    goto :goto_1

    .line 111
    .restart local v5       #sql:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method
