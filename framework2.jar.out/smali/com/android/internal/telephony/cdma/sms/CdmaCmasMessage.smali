.class public Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
.super Lcom/android/internal/telephony/CmasMessage;
.source "CdmaCmasMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    }
.end annotation


# static fields
.field public static final CATEGORY_CBRNE:I = 0xa

.field public static final CATEGORY_ENV:I = 0x7

.field public static final CATEGORY_FIRE:I = 0x5

.field public static final CATEGORY_GEO:I = 0x0

.field public static final CATEGORY_HEALTH:I = 0x6

.field public static final CATEGORY_INFRA:I = 0x9

.field public static final CATEGORY_MET:I = 0x1

.field public static final CATEGORY_OTHER:I = 0xb

.field public static final CATEGORY_RESCUE:I = 0x4

.field public static final CATEGORY_SAFETY:I = 0x2

.field public static final CATEGORY_SECURITY:I = 0x3

.field public static final CATEGORY_TRANSPORT:I = 0x8

.field public static final E_RECORD_TYPE_1:I = 0x1

.field public static final E_RECORD_TYPE_2:I = 0x2

.field public static final E_RECORD_TYPE_ALERT_TEXT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final RESPONSE_TYPE_AVOID:I = 0x5

.field public static final RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final RESPONSE_TYPE_NONE:I = 0x7

.field public static final RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final RESPONSE_TYPE_SHELTER:I


# instance fields
.field protected expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

.field protected serviceCategory:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/CmasMessage;-><init>()V

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasFormat:I

    .line 130
    return-void
.end method

.method public static fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    .locals 11
    .parameter "data"

    .prologue
    const/16 v10, 0x3b

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;-><init>()V

    .line 279
    .local v5, ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    const/4 v7, 0x0

    aget-byte v7, p0, v7

    and-int/lit16 v6, v7, 0xff

    .line 280
    .local v6, year:I
    const/16 v7, 0x63

    if-gt v6, v7, :cond_0

    if-gez v6, :cond_1

    :cond_0
    move-object v5, v8

    .line 302
    .end local v5           #ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    :goto_0
    return-object v5

    .line 281
    .restart local v5       #ts:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    :cond_1
    const/16 v7, 0x60

    if-lt v6, v7, :cond_3

    add-int/lit16 v7, v6, 0x76c

    :goto_1
    iput v7, v5, Landroid/text/format/Time;->year:I

    .line 283
    aget-byte v7, p0, v9

    and-int/lit16 v3, v7, 0xff

    .line 284
    .local v3, month:I
    if-lt v3, v9, :cond_2

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_2
    move-object v5, v8

    goto :goto_0

    .line 281
    .end local v3           #month:I
    :cond_3
    add-int/lit16 v7, v6, 0x7d0

    goto :goto_1

    .line 285
    .restart local v3       #month:I
    :cond_4
    add-int/lit8 v7, v3, -0x1

    iput v7, v5, Landroid/text/format/Time;->month:I

    .line 287
    const/4 v7, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v0, v7, 0xff

    .line 288
    .local v0, day:I
    if-lt v0, v9, :cond_5

    const/16 v7, 0x1f

    if-le v0, v7, :cond_6

    :cond_5
    move-object v5, v8

    goto :goto_0

    .line 289
    :cond_6
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 291
    const/4 v7, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 292
    .local v1, hour:I
    if-ltz v1, :cond_7

    const/16 v7, 0x17

    if-le v1, v7, :cond_8

    :cond_7
    move-object v5, v8

    goto :goto_0

    .line 293
    :cond_8
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 295
    const/4 v7, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v2, v7, 0xff

    .line 296
    .local v2, minute:I
    if-ltz v2, :cond_9

    if-le v2, v10, :cond_a

    :cond_9
    move-object v5, v8

    goto :goto_0

    .line 297
    :cond_a
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 299
    const/4 v7, 0x5

    aget-byte v7, p0, v7

    and-int/lit16 v4, v7, 0xff

    .line 300
    .local v4, second:I
    if-ltz v4, :cond_b

    if-le v4, v10, :cond_c

    :cond_b
    move-object v5, v8

    goto :goto_0

    .line 301
    :cond_c
    iput v4, v5, Landroid/text/format/Time;->second:I

    goto :goto_0
.end method

.method public static getCmaeCategory(I)Ljava/lang/String;
    .locals 2
    .parameter "cateId"

    .prologue
    .line 194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 221
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 197
    :pswitch_0
    const v1, 0x1040522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 199
    :pswitch_1
    const v1, 0x1040523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :pswitch_2
    const v1, 0x1040524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 203
    :pswitch_3
    const v1, 0x1040525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 205
    :pswitch_4
    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 207
    :pswitch_5
    const v1, 0x1040527

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 209
    :pswitch_6
    const v1, 0x1040528

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :pswitch_7
    const v1, 0x1040529

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    :pswitch_8
    const v1, 0x104052a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :pswitch_9
    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 217
    :pswitch_a
    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 219
    :pswitch_b
    const v1, 0x104052d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getCmaeResponseType(I)Ljava/lang/String;
    .locals 2
    .parameter "respId"

    .prologue
    .line 226
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 245
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 229
    :pswitch_0
    const v1, 0x104052e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 231
    :pswitch_1
    const v1, 0x104052f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :pswitch_2
    const v1, 0x1040530

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :pswitch_3
    const v1, 0x1040531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 237
    :pswitch_4
    const v1, 0x1040532

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 239
    :pswitch_5
    const v1, 0x1040533

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 241
    :pswitch_6
    const v1, 0x1040534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 243
    :pswitch_7
    const v1, 0x1040535

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getNumberOfFields(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;)I
    .locals 7
    .parameter "bCmas"

    .prologue
    .line 135
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->charSetEncodingSet:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 137
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->charSetEncoding:I

    .line 138
    .local v2, encoding:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->alertText:[B

    .line 139
    .local v1, data:[B
    array-length v4, v1

    mul-int/lit8 v3, v4, 0x8

    .line 140
    .local v3, lenBits:I
    add-int/lit8 v3, v3, -0x5

    .line 141
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS:lenBits> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, count:I
    packed-switch v2, :pswitch_data_0

    .line 159
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 147
    :pswitch_1
    div-int/lit8 v0, v3, 0x8

    .line 152
    :pswitch_2
    div-int/lit8 v0, v3, 0x7

    .line 161
    :goto_1
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAS:num of chars> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :pswitch_3
    div-int/lit8 v0, v3, 0x10

    .line 157
    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCmasType()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    if-nez v0, :cond_0

    .line 169
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    return v0

    .line 171
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    goto :goto_0

    .line 174
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    goto :goto_0

    .line 177
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    goto :goto_0

    .line 183
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasType:I

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    return v0
.end method

.method public setExpires(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;)V
    .locals 0
    .parameter "expires"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->expires:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    .line 346
    return-void
.end method

.method public setServiceCategory(I)V
    .locals 0
    .parameter "serviceCategory"

    .prologue
    .line 361
    iput p1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Cmas "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ protocolVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->protocolVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgEncoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->charSetEncodingSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->charSetEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->alertText:[B

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertText=\'0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->alertText:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertTextStr=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->alertTextStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", \ncategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->category:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", responseType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->responseType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", severity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->severity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", urgency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->urgency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", certainty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->certainty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cmasId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->cmasId:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alertHandling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->alertHandling:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->language:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", expiredMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->expiredMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    :cond_1
    const-string v1, "unset"

    goto/16 :goto_0
.end method
