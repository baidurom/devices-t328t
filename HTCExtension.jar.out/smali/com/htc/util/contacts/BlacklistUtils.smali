.class public Lcom/htc/util/contacts/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field public static final BLOCKED_RUIM:Ljava/lang/String; = "block_ruim"

.field public static final BLOCKED_SIM:Ljava/lang/String; = "block_sim"

.field public static final BLOCKED_SUBSIM:Ljava/lang/String; = "block_subsim"

.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"

.field public static final PRRAM_BLOCKED_TYPE:Ljava/lang/String; = "PRRAM_BLOCKED_TYPE"

.field public static final RUIM_TOKEN:Ljava/lang/String; = "RUIM"

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addContactToBlacklist(Landroid/content/Context;JZLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "person_id"
    .parameter "isSim"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 238
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 239
    if-eqz p3, :cond_0

    .line 241
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$4;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$4;-><init>(JLandroid/content/Context;)V

    .line 248
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 287
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 252
    :cond_0
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$5;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$5;-><init>(JLandroid/content/Context;)V

    .line 259
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 265
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_1
    invoke-static {p4}, Lcom/htc/util/contacts/BlacklistUtils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, black_number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 267
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$6;

    invoke-direct {v1, v0, p0}, Lcom/htc/util/contacts/BlacklistUtils$6;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 281
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 287
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static addContactToBlacklist(Landroid/content/Context;JZZLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "person_id"
    .parameter "isSim"
    .parameter "isRuim"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 183
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 184
    if-eqz p3, :cond_0

    .line 186
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$1;

    invoke-direct {v1, p1, p2, p0, p4}, Lcom/htc/util/contacts/BlacklistUtils$1;-><init>(JLandroid/content/Context;Z)V

    .line 193
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 232
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return v2

    .line 197
    :cond_0
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/htc/util/contacts/BlacklistUtils$2;-><init>(JLandroid/content/Context;)V

    .line 204
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 210
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_1
    invoke-static {p5}, Lcom/htc/util/contacts/BlacklistUtils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, black_number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    new-instance v1, Lcom/htc/util/contacts/BlacklistUtils$3;

    invoke-direct {v1, v0, p0}, Lcom/htc/util/contacts/BlacklistUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 226
    .restart local v1       #thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 232
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static couldAddToBlockCaller(II)Z
    .locals 1
    .parameter "vip"
    .parameter "sendToVoicemail"

    .prologue
    .line 160
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static couldAddToBlockCaller(IIZ)Z
    .locals 2
    .parameter "vip"
    .parameter "sendToVoicemail"
    .parameter "isSIMSDN"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-boolean v1, Landroid/provider/HtcContactsContract;->enableManageCalls:Z

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/provider/HtcContactsContract$BALCKLIST;->enableBlacklist:Z

    if-eqz v1, :cond_0

    .line 175
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v4, 0x0

    .line 312
    :goto_0
    return-object v4

    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 303
    .local v3, length:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 306
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 308
    .local v1, character:C
    const-string v4, " ()-./"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    .end local v1           #character:C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static modifySendToVoiceMail(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "send_to_voicemail"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"

    .prologue
    const/4 v6, 0x0

    .line 110
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 111
    .local v1, contact_id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "send_to_voicemail"

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    sget-object v4, Landroid/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 122
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 115
    .end local v0           #blockSimUri:Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 125
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSim(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 8
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "isRuim"

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 54
    .local v2, contact_id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "send_to_voicemail"

    if-eqz p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    sget-object v5, Landroid/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 63
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 64
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v6, "RUIM"

    if-eqz p3, :cond_2

    const-string v5, "block_ruim"

    :goto_2
    invoke-virtual {v1, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 66
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 68
    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 58
    .end local v0           #blockSimUri:Landroid/net/Uri;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 64
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    .restart local v1       #builder:Landroid/net/Uri$Builder;
    :cond_2
    const-string v5, "block_sim"

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifySendToVoiceMailForSimType(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "contact_uri"
    .parameter "block"
    .parameter "accountType"

    .prologue
    const/4 v8, 0x0

    .line 76
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 77
    .local v2, contact_id:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    .line 106
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "send_to_voicemail"

    if-eqz p2, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    const-string v4, "block_sim"

    .line 85
    .local v4, param:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 86
    const-string v6, "com.anddroid.contacts.sim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    const-string v4, "block_sim"

    .line 95
    :cond_1
    :goto_2
    sget-object v6, Landroid/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, blockSimUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 97
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v6, "PRRAM_BLOCKED_TYPE"

    invoke-virtual {v1, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 99
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 101
    if-eqz p2, :cond_5

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 81
    .end local v0           #blockSimUri:Landroid/net/Uri;
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v4           #param:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 88
    .restart local v4       #param:Ljava/lang/String;
    :cond_3
    const-string v6, "com.android.contacts.ruim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    const-string v4, "block_ruim"

    goto :goto_2

    .line 90
    :cond_4
    const-string v6, "com.android.contacts.subsim"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    const-string v4, "block_subsim"

    goto :goto_2

    .line 104
    .restart local v0       #blockSimUri:Landroid/net/Uri;
    .restart local v1       #builder:Landroid/net/Uri$Builder;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifyVIP(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "vip"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static modifyVIPForSim(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "context"
    .parameter "contact_uri"
    .parameter "vip"

    .prologue
    const/4 v7, 0x0

    .line 137
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 138
    .local v1, contact_id:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 157
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "vip"

    if-eqz p2, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    sget-object v5, Landroid/provider/HtcContactsContract$VIP_SIM;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 147
    .local v4, vipSimUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "RUIM"

    const-string v6, "block_sim"

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 151
    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 142
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #vipSimUri:Landroid/net/Uri;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 154
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local v4       #vipSimUri:Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
