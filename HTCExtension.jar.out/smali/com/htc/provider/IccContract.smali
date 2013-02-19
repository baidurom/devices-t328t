.class public Lcom/htc/provider/IccContract;
.super Ljava/lang/Object;
.source "IccContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/IccContract$IccPhonebook;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 10
    .parameter "contactId"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    .local v7, deleteUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v7

    .line 157
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryRecordNumUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 160
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 166
    .local v8, recordNumber:J
    invoke-static {v8, v9}, Lcom/htc/provider/IccContract;->getDeleteSIMUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 168
    .end local v8           #recordNumber:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeleteIccPhonebookUriExt(JLandroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 11
    .parameter "contactId"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v7, 0x0

    .line 129
    .local v7, deleteUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v7

    .line 131
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID_ACCOUNT_TYPE:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryRecordNumUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 142
    .local v9, recordNumber:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v8, v2

    .line 143
    .local v8, phoneType:I
    invoke-static {v9, v10, v8}, Lcom/htc/provider/IccContract;->getDeleteSIMUriExt(JI)Landroid/net/Uri;

    move-result-object v7

    .line 145
    .end local v8           #phoneType:I
    .end local v9           #recordNumber:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeleteIccPhonebookUriExt(JLandroid/content/ContentResolver;I)Landroid/net/Uri;
    .locals 10
    .parameter "contactId"
    .parameter "resolver"
    .parameter "phoneType"

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, deleteUri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v0, p0, v3

    if-gtz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v7

    .line 93
    :cond_1
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryRecordNumUri:Landroid/net/Uri;
    move-object v0, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 102
    .local v8, recordNumber:J
    invoke-static {v8, v9, p3}, Lcom/htc/provider/IccContract;->getDeleteSIMUriExt(JI)Landroid/net/Uri;

    move-result-object v7

    .line 104
    .end local v8           #recordNumber:J
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDeleteIccPhonebookUriExt(JLandroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "contactId"
    .parameter "resolver"
    .parameter "simAccountType"

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 116
    .local v0, phoneType:I
    if-eqz p3, :cond_1

    const-string v1, "com.android.contacts.ruim"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v0, 0x2

    .line 122
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/htc/provider/IccContract;->getDeleteIccPhonebookUriExt(JLandroid/content/ContentResolver;I)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 119
    :cond_1
    if-eqz p3, :cond_0

    const-string v1, "com.android.contacts.subsim"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getDeleteSIMUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "recordNum"

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDeleteSIMUriExt(JI)Landroid/net/Uri;
    .locals 2
    .parameter "recordNum"
    .parameter "phoneType"

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    .line 73
    .local v0, simUri:Landroid/net/Uri;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 74
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->RUIM_CONTENT_URI:Landroid/net/Uri;

    .line 83
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 77
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->SUB_SIM_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->SIM_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method
