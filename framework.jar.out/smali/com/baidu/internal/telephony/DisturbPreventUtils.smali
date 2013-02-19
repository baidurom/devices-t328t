.class public Lcom/baidu/internal/telephony/DisturbPreventUtils;
.super Ljava/lang/Object;
.source "DisturbPreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;
    }
.end annotation


# static fields
.field public static final ANTI_RULE:Ljava/lang/String; = "anti_rule"

.field public static final ANTI_SETTING_PREFERENCE_NAME:Ljava/lang/String; = "anti_settings"

.field public static final ANTI_SWITCHER:Ljava/lang/String; = "anti_switcher"

.field public static final BLACK_LIST_MODE:I = 0x1

.field private static final DEBUG:Z = true

.field public static final FROM_CALL:I = 0x0

.field public static final FROM_MMS:I = 0x1

.field public static final NON_CONTACTS_SILENCE:I = 0x2

.field public static final NON_VIP_SILENCE:I = 0x1

.field public static final PASS:I = 0x0

.field public static final PREVENT:I = 0x1

.field public static final PREVENT_BLACK_LIST:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "IPhoneNumberPreventService"

.field public static final SILENCE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IPhoneNumberPreventService"

.field public static final VIP_MODE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public static getAntiRule(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 240
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->ANTI_RULE_URI:Landroid/net/Uri;

    .line 241
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 242
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 245
    .local v7, ret:I
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 249
    :cond_0
    if-eqz v6, :cond_1

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_1
    return v7

    .line 249
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getBlackListByNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 214
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=1"

    .line 216
    .local v3, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .local v4, selectionArgs:[Ljava/lang/String;
    move-object v5, v2

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 218
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getPhoneNumber(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v2, v4

    .local v2, projection:[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 113
    .local v7, number:Ljava/lang/String;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 117
    :cond_0
    if-eqz v6, :cond_1

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    const/4 v6, 0x0

    .line 122
    :cond_1
    return-object v7

    .line 117
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method public static isExistInBlackList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 168
    const/4 v7, 0x0

    .line 169
    .local v7, result:Z
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 172
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=1"

    .line 173
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 174
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_0

    .line 177
    const/4 v7, 0x1

    .line 180
    :cond_0
    if-eqz v6, :cond_1

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v6, 0x0

    .line 185
    :cond_1
    return v7

    .line 180
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v6, 0x0

    :cond_2
    throw v5
.end method

.method public static isExistInContacts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "phonenumber"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 189
    const/4 v7, 0x0

    .line 190
    .local v7, result:Z
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 191
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?,0) AND (mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/sip_address\')"

    .line 196
    .local v3, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 197
    .local v4, selectionArgs:[Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 198
    .local v2, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_0

    .line 201
    const/4 v7, 0x1

    .line 204
    :cond_0
    if-eqz v6, :cond_1

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v6, 0x0

    .line 209
    :cond_1
    return v7

    .line 204
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    const/4 v6, 0x0

    :cond_2
    throw v5
.end method

.method public static isExistInList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    .local v7, result:Z
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 128
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 130
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0)"

    .line 131
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 132
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_0

    .line 135
    const/4 v7, 0x1

    .line 138
    :cond_0
    if-eqz v6, :cond_1

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v6, 0x0

    .line 143
    :cond_1
    return v7

    .line 138
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v6, 0x0

    :cond_2
    throw v5
.end method

.method public static isExistInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    .local v7, result:Z
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, resolver:Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 151
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number,?,0) AND type=0"

    .line 152
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 153
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_0

    .line 156
    const/4 v7, 0x1

    .line 159
    :cond_0
    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 161
    const/4 v6, 0x0

    .line 164
    :cond_1
    return v7

    .line 159
    :catchall_0
    move-exception v5

    if-eqz v6, :cond_2

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 161
    const/4 v6, 0x0

    :cond_2
    throw v5
.end method

.method public static isSwitcherOpened(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 222
    sget-object v1, Lcom/baidu/internal/telephony/DisturbPreventUtils$Columns;->SWITCHER_URI:Landroid/net/Uri;

    .line 223
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 224
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 225
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 227
    .local v7, ret:I
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 231
    :cond_0
    if-eqz v6, :cond_1

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    if-ne v7, v8, :cond_3

    move v2, v8

    :goto_0
    return v2

    .line 231
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    :cond_3
    move v2, v9

    .line 236
    goto :goto_0
.end method

.method public static shouldPrevent(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 12
    .parameter "context"
    .parameter "phonenumber"
    .parameter "app"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    const/4 v6, 0x0

    .line 44
    .local v6, result:I
    invoke-static {p0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->isSwitcherOpened(Landroid/content/Context;)Z

    move-result v3

    .line 45
    .local v3, isAntiSwitchOpened:Z
    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 46
    :cond_0
    const/4 v6, 0x0

    .line 104
    :cond_1
    :goto_0
    return v6

    .line 48
    :cond_2
    invoke-static {p0, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getBlackListByNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 50
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_9

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 52
    if-ne p2, v8, :cond_5

    .line 53
    const-string/jumbo v10, "mms"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 54
    .local v1, anti_mms:I
    if-ne v1, v8, :cond_4

    move v6, v8

    .line 62
    .end local v1           #anti_mms:I
    :goto_1
    if-nez v6, :cond_3

    .line 64
    invoke-static {p0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getAntiRule(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 65
    .local v7, rule:I
    if-ne v7, v8, :cond_8

    .line 66
    const/4 v6, 0x2

    .line 97
    .end local v7           #rule:I
    :cond_3
    :goto_2
    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 99
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1       #anti_mms:I
    :cond_4
    move v6, v9

    .line 54
    goto :goto_1

    .line 55
    .end local v1           #anti_mms:I
    :cond_5
    if-nez p2, :cond_7

    .line 56
    :try_start_1
    const-string/jumbo v10, "phone"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 57
    .local v0, anti_call:I
    if-ne v0, v8, :cond_6

    move v6, v8

    .line 58
    :goto_3
    goto :goto_1

    :cond_6
    move v6, v9

    .line 57
    goto :goto_3

    .line 59
    .end local v0           #anti_call:I
    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    .line 67
    .restart local v7       #rule:I
    :cond_8
    if-ne v7, v11, :cond_3

    .line 68
    invoke-static {p0, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->isExistInContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 69
    const/4 v6, 0x2

    goto :goto_2

    .line 75
    .end local v7           #rule:I
    :cond_9
    invoke-static {p0}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getAntiRule(Landroid/content/Context;)I

    move-result v7

    .line 76
    .restart local v7       #rule:I
    if-ne v7, v8, :cond_b

    .line 77
    invoke-static {p0, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->isExistInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 79
    .local v5, isInWhiteList:Z
    if-eqz v5, :cond_a

    .line 80
    const/4 v6, 0x0

    goto :goto_2

    .line 82
    :cond_a
    const/4 v6, 0x2

    goto :goto_2

    .line 84
    .end local v5           #isInWhiteList:Z
    :cond_b
    if-ne v7, v11, :cond_3

    .line 85
    invoke-static {p0, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->isExistInContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {p0, p1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->isExistInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    move v4, v8

    .line 88
    .local v4, isInContactsOrWhiteList:Z
    :goto_4
    if-eqz v4, :cond_e

    .line 89
    const/4 v6, 0x0

    goto :goto_2

    .end local v4           #isInContactsOrWhiteList:Z
    :cond_d
    move v4, v9

    .line 85
    goto :goto_4

    .line 91
    .restart local v4       #isInContactsOrWhiteList:Z
    :cond_e
    const/4 v6, 0x2

    goto :goto_2

    .line 97
    .end local v4           #isInContactsOrWhiteList:Z
    .end local v7           #rule:I
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_f

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 99
    const/4 v2, 0x0

    :cond_f
    throw v8
.end method
