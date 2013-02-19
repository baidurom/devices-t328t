.class public final Lcom/htc/utils/ulog/SerializableUtil$Writer;
.super Ljava/lang/Object;
.source "SerializableUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/SerializableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(Ljava/io/DataOutputStream;Ljava/util/List;)V
    .locals 13
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, in:Ljava/util/List;,"Ljava/util/List<Lcom/htc/utils/ulog/ULogData;>;"
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 36
    if-eqz p1, :cond_7

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/utils/ulog/ULogData;

    .line 43
    .local v8, ulogdata:Lcom/htc/utils/ulog/ULogData;
    if-eqz v8, :cond_0

    .line 45
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v1, v9

    .line 46
    .local v1, flag:I
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    if-ne v1, v10, :cond_1

    .line 48
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 51
    :cond_1
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v1, v9

    .line 52
    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 53
    if-ne v1, v10, :cond_2

    .line 54
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {p0, v11, v12}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 60
    invoke-interface {v8}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v5

    .line 61
    .local v5, logItem:Lcom/htc/utils/ulog/ULogData$ULogItem;
    if-eqz v5, :cond_6

    .line 62
    invoke-interface {v5}, Lcom/htc/utils/ulog/ULogData$ULogItem;->getEntrySet()Ljava/util/Set;

    move-result-object v7

    .line 63
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 64
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 66
    .local v4, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, obj:Ljava/lang/Object;
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    instance-of v11, v6, Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 68
    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 69
    check-cast v6, Ljava/lang/String;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #flag:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #logItem:Lcom/htc/utils/ulog/ULogData$ULogItem;
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    move v1, v10

    .line 45
    goto :goto_1

    .restart local v1       #flag:I
    :cond_4
    move v1, v10

    .line 51
    goto :goto_2

    .line 72
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #logItem:Lcom/htc/utils/ulog/ULogData$ULogItem;
    .restart local v6       #obj:Ljava/lang/Object;
    .restart local v7       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5
    const-string v11, ""

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 73
    const-string v11, ""

    invoke-virtual {p0, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_0

    .line 83
    .end local v1           #flag:I
    .end local v5           #logItem:Lcom/htc/utils/ulog/ULogData$ULogItem;
    .end local v8           #ulogdata:Lcom/htc/utils/ulog/ULogData;
    :cond_7
    return-void
.end method

.method public static writeEx(Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 2
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, in:Ljava/util/List;,"Ljava/util/List<Lcom/htc/utils/ulog/ULogData;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 95
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v0, dos:Ljava/io/DataOutputStream;
    invoke-static {v0, p1}, Lcom/htc/utils/ulog/SerializableUtil$Writer;->write(Ljava/io/DataOutputStream;Ljava/util/List;)V

    .line 97
    const/4 v1, 0x1

    .line 99
    .end local v0           #dos:Ljava/io/DataOutputStream;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
