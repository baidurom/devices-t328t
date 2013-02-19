.class public Lcom/htc/socialnetwork/SocialNetworkFactory;
.super Ljava/lang/Object;
.source "SocialNetworkFactory.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field private static clients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/socialnetwork/SocialNetworkClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSNClientByName(Ljava/lang/String;Landroid/content/Context;)Lcom/htc/socialnetwork/SocialNetworkClient;
    .locals 16
    .parameter "serviceName"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 52
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .local v7, api_key:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, secret:Ljava/lang/String;
    const/4 v15, 0x0

    .line 53
    .local v15, service_class:Ljava/lang/String;
    sget-object v2, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 56
    .local v10, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    if-eqz v10, :cond_0

    move-object v2, v10

    .line 114
    :goto_0
    return-object v2

    .line 59
    :cond_0
    sget-object v2, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service_name = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 62
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 63
    const/4 v2, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-string v2, "api_key"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    const-string v2, "secret"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 71
    const-string v2, "service_class"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 73
    const-string v2, "capability"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 76
    .local v8, capability:I
    :try_start_0
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 78
    .local v9, clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/socialnetwork/SocialNetworkClient;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 81
    .local v11, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/socialnetwork/SocialNetworkClient;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    aput-object v14, v2, v3

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    move-object v10, v0

    .line 82
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v8}, Lcom/htc/socialnetwork/SocialNetworkClient;->setService(Ljava/lang/String;I)V

    .line 83
    sget-object v2, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v2, v10

    .line 114
    goto/16 :goto_0

    .line 84
    .end local v9           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/htc/socialnetwork/SocialNetworkClient;>;"
    .end local v11           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/htc/socialnetwork/SocialNetworkClient;>;"
    :catch_0
    move-exception v13

    .line 85
    .local v13, e:Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v13           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 87
    :catch_1
    move-exception v13

    .line 88
    .local v13, e:Ljava/lang/SecurityException;
    :try_start_2
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 90
    .end local v13           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v13

    .line 91
    .local v13, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 93
    .end local v13           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v13

    .line 94
    .local v13, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 96
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v13

    .line 97
    .local v13, e:Ljava/lang/InstantiationException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 99
    .end local v13           #e:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v13

    .line 100
    .local v13, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 102
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v13

    .line 103
    .local v13, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v8           #capability:I
    .end local v13           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 110
    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7de

    invoke-direct {v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2
.end method

.method public static getServiceNames(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "service_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 125
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 137
    :goto_0
    return-object v3

    .line 128
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 130
    .local v6, cnt:I
    new-array v10, v6, [Ljava/lang/String;

    .line 131
    .local v10, serviceNames:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 133
    .local v8, i:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    const-string v1, "service_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 136
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v10

    .line 137
    goto :goto_0
.end method

.method public static release()V
    .locals 5

    .prologue
    .line 29
    sget-object v4, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 30
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, key:Ljava/lang/String;
    sget-object v4, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/SocialNetworkClient;

    .line 33
    .local v0, client:Lcom/htc/socialnetwork/SocialNetworkClient;
    sget-object v4, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->release()V

    goto :goto_0

    .line 36
    .end local v0           #client:Lcom/htc/socialnetwork/SocialNetworkClient;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/htc/socialnetwork/SocialNetworkFactory;->clients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method
