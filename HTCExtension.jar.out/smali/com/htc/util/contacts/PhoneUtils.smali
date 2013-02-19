.class public Lcom/htc/util/contacts/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# static fields
.field public static final NUM_TYPE_EMERGENCY:I = 0x6

.field public static final NUM_TYPE_NORMAL:I = 0x1

.field public static final NUM_TYPE_PAYPHONE:I = 0x4

.field public static final NUM_TYPE_PRIVATE:I = 0x3

.field public static final NUM_TYPE_UNKNOWN:I = 0x2

.field public static final NUM_TYPE_VOICEMAIL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.htc.util.contacts.PhoneUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmergencyNumbers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    const-string v1, "ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, numbers:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "ro.ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getEmergencyNumbersExt(I)[Ljava/lang/String;
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, numbers:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    :cond_0
    const-string v1, "com.htc.util.contacts.PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    .line 294
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    const-string v1, "ril.ecclist.gsm"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    const-string v1, "ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const-string v1, "ro.ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_2
    :goto_1
    const-string v1, "com.htc.util.contacts.PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECC List = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 322
    const/4 v1, 0x0

    .line 324
    :goto_2
    return-object v1

    .line 296
    :cond_3
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_4
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    .line 300
    const-string v1, "ril.ecclist.cdma"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_5
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 302
    const-string v1, "ril.ecclist.sub"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_6
    const-string v1, "ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    const-string v1, "ro.ril.ecclist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 324
    :cond_7
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static final getType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "number"
    .parameter "voicemailNumber"

    .prologue
    .line 100
    const/4 v0, 0x1

    .line 102
    .local v0, type:I
    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/4 v0, 0x2

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    const-string v1, "-2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const/4 v0, 0x3

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "-3"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const/4 v0, 0x4

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    const/4 v0, 0x5

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static final getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "number"
    .parameter "voicemailNumber"
    .parameter "emergencyNumbers"

    .prologue
    .line 131
    const/4 v0, 0x1

    .line 133
    .local v0, type:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 149
    .end local v0           #type:I
    .local v1, type:I
    :goto_0
    return v1

    .line 137
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_0
    const-string v2, "-1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const/4 v0, 0x2

    :cond_1
    :goto_1
    move v1, v0

    .line 149
    .end local v0           #type:I
    .restart local v1       #type:I
    goto :goto_0

    .line 139
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_2
    const-string v2, "-2"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/4 v0, 0x3

    goto :goto_1

    .line 141
    :cond_3
    const-string v2, "-3"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    const/4 v0, 0x4

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    const/4 v0, 0x5

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {p0, p2}, Lcom/htc/util/contacts/PhoneUtils;->isEmergency(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public static final getViewContactIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .parameter "userId"
    .parameter "recordNum"
    .parameter "number"

    .prologue
    const-wide/16 v6, 0x0

    const/high16 v5, 0x2000

    const/high16 v4, 0x400

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, intent:Landroid/content/Intent;
    cmp-long v2, p0, v6

    if-lez v2, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    :goto_0
    return-object v0

    .line 245
    :cond_0
    cmp-long v2, p2, v6

    if-lez v2, :cond_1

    .line 246
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    sget-object v2, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, simUri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 253
    .end local v1           #simUri:Landroid/net/Uri;
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 254
    invoke-static {p4}, Lcom/htc/util/contacts/PhoneUtils;->getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_2
    const-string v2, "com.htc.util.contacts.PhoneUtils"

    const-string v3, "getViewContactIntent. no userId, no recordNum, no number!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getViewUnknownCardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "number"

    .prologue
    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    sget-object v1, Lcom/htc/provider/HtcContactsContract$UnknownContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    const-string v1, "number"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    .line 280
    :cond_0
    const-string v1, "com.htc.util.contacts.PhoneUtils"

    const-string v2, " getViewUnknownCardIntent with numm number!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isEmergency(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter "target"
    .parameter "collection"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    if-eqz p1, :cond_3

    array-length v6, p1

    if-ne v6, v5, :cond_0

    aget-object v6, p1, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 175
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 176
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 185
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 175
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #number:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #number:Ljava/lang/String;
    :cond_3
    const-string v6, "112"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "911"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static final isSpecialType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 210
    packed-switch p0, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final isSpecialType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "voicemailNumber"

    .prologue
    .line 198
    invoke-static {p0, p1}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v0

    return v0
.end method
