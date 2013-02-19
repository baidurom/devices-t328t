.class public Lcom/htc/hfm/Speech;
.super Ljava/lang/Object;
.source "Speech.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AUDIO_TYPE_AMR:I = 0x323

.field public static final AUDIO_TYPE_PCM_16K:I = 0x322

.field public static final AUDIO_TYPE_PCM_8K:I = 0x321

.field public static final AUDIO_TYPE_SPEEX_16K:I = 0x325

.field public static final AUDIO_TYPE_SPEEX_32K:I = 0x326

.field public static final AUDIO_TYPE_SPEEX_8K:I = 0x324

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/hfm/Speech;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTCSPEAK_DEFAULT_LANG:Ljava/lang/String; = "htcspeak_default_lang"

.field private static final HTCSPEAK_USED_LANG:Ljava/lang/String; = "htcspeak_used_lang"

.field private static final PROMPT_LOCATION:Ljava/lang/String; = "/data/.speak/languages/"

.field private static final PROMPT_LOCATION_DEFAULT:Ljava/lang/String; = "/system/etc/.speak/languages/"

.field public static final SPEECH_TYPE_AUDIO_FILE:I = 0x2c0

.field public static final SPEECH_TYPE_AUDIO_RESOURCE:I = 0x2be

.field public static final SPEECH_TYPE_TEXT:I = 0x2bd

.field public static final SPEECH_TYPE_TEXT_RESOURCE:I = 0x2bf

.field public static final SPEECH_TYPE_TEXT_WITH_DIGITS:I = 0x2c1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private file:Ljava/lang/String;

.field private mAudio:[B

.field private mAudioResId:I

.field private mAudioType:I

.field private mSpeechType:I

.field private mText:Ljava/lang/String;

.field private mTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/htc/hfm/Speech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/htc/hfm/Speech$1;

    invoke-direct {v0}, Lcom/htc/hfm/Speech$1;-><init>()V

    sput-object v0, Lcom/htc/hfm/Speech;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/hfm/Speech$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/hfm/Speech;-><init>()V

    return-void
.end method

.method private static audioTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "audioType"

    .prologue
    .line 152
    packed-switch p0, :pswitch_data_0

    .line 166
    const-string v0, "UNKNOWN_AUDIO_TYPE"

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    const-string v0, "AUDIO_TYPE_PCM_8K"

    goto :goto_0

    .line 156
    :pswitch_1
    const-string v0, "AUDIO_TYPE_PCM_16K"

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "AUDIO_TYPE_PCM_16K"

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v0, "AUDIO_TYPE_SPEEX_8K"

    goto :goto_0

    .line 162
    :pswitch_4
    const-string v0, "AUDIO_TYPE_SPEEX_16K"

    goto :goto_0

    .line 164
    :pswitch_5
    const-string v0, "AUDIO_TYPE_SPEEX_32K"

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private convertAudioFile(Landroid/content/Context;)V
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, language:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/etc/.speak/languages/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_prompt/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, path1:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/.speak/languages/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_prompt/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, path2:Ljava/lang/String;
    const/4 v1, 0x0

    .line 293
    .local v1, f:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, f1:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, f2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 296
    move-object v1, v2

    .line 305
    :goto_0
    sget-object v9, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v5, -0x1

    .line 309
    .local v5, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 310
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 297
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #i:I
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 298
    move-object v1, v3

    goto :goto_0

    .line 300
    :cond_1
    const/16 v9, 0x2bd

    iput v9, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 301
    const-string v9, ""

    iput-object v9, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 302
    sget-object v9, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    const-string v10, "Both paths do not exist. Use empty string text."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_2
    return-void

    .line 312
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #i:I
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 313
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 314
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    goto :goto_2
.end method

.method private convertAudioResource(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 262
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 263
    .local v2, is:Ljava/io/InputStream;
    const/4 v1, -0x1

    .line 264
    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 265
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 268
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    .line 270
    return-void
.end method

.method private convertTextResource(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 274
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public static createSpeechFromAudioFile(Ljava/lang/String;I)Lcom/htc/hfm/Speech;
    .locals 4
    .parameter "file"
    .parameter "audioType"

    .prologue
    .line 121
    sget-object v1, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audioType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/hfm/Speech;->audioTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 123
    .local v0, s:Lcom/htc/hfm/Speech;
    const/16 v1, 0x2c0

    iput v1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 124
    invoke-static {p0}, Lcom/htc/hfm/Speech;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/hfm/Speech;->file:Ljava/lang/String;

    .line 125
    iput p1, v0, Lcom/htc/hfm/Speech;->mAudioType:I

    .line 126
    return-object v0
.end method

.method public static createSpeechFromAudioResource(I)Lcom/htc/hfm/Speech;
    .locals 2
    .parameter "resourceId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 105
    .local v0, s:Lcom/htc/hfm/Speech;
    const/16 v1, 0x2be

    iput v1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 106
    iput p0, v0, Lcom/htc/hfm/Speech;->mAudioResId:I

    .line 107
    const/16 v1, 0x321

    iput v1, v0, Lcom/htc/hfm/Speech;->mAudioType:I

    .line 108
    return-object v0
.end method

.method public static createSpeechFromAudioResource(II)Lcom/htc/hfm/Speech;
    .locals 4
    .parameter "resourceId"
    .parameter "audioType"

    .prologue
    .line 112
    sget-object v1, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/htc/hfm/Speech;->audioTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 114
    .local v0, s:Lcom/htc/hfm/Speech;
    const/16 v1, 0x2be

    iput v1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 115
    iput p0, v0, Lcom/htc/hfm/Speech;->mAudioResId:I

    .line 116
    iput p1, v0, Lcom/htc/hfm/Speech;->mAudioType:I

    .line 117
    return-object v0
.end method

.method public static createSpeechFromText(Ljava/lang/String;)Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "text"

    .prologue
    .line 92
    const/16 v0, 0x2bd

    invoke-static {p0, v0}, Lcom/htc/hfm/Speech;->createSpeechFromText(Ljava/lang/String;I)Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method

.method private static createSpeechFromText(Ljava/lang/String;I)Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "text"
    .parameter "speechType"

    .prologue
    .line 134
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 135
    .local v0, s:Lcom/htc/hfm/Speech;
    iput p1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 136
    iput-object p0, v0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 137
    return-object v0
.end method

.method public static createSpeechFromTextResource(I)Lcom/htc/hfm/Speech;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 96
    new-instance v0, Lcom/htc/hfm/Speech;

    invoke-direct {v0}, Lcom/htc/hfm/Speech;-><init>()V

    .line 97
    .local v0, s:Lcom/htc/hfm/Speech;
    const/16 v1, 0x2bf

    iput v1, v0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 98
    iput p0, v0, Lcom/htc/hfm/Speech;->mTextResId:I

    .line 99
    return-object v0
.end method

.method public static createSpeechFromTextWithDigits(Ljava/lang/String;)Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "text"

    .prologue
    .line 130
    const/16 v0, 0x2c1

    invoke-static {p0, v0}, Lcom/htc/hfm/Speech;->createSpeechFromText(Ljava/lang/String;I)Lcom/htc/hfm/Speech;

    move-result-object v0

    return-object v0
.end method

.method private getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htcspeak_used_lang"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, language:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htcspeak_default_lang"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    if-nez v0, :cond_1

    .line 323
    const-string v0, "en_US"

    .line 325
    :cond_1
    sget-object v1, Lcom/htc/hfm/Speech;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v0
.end method

.method private getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 6
    .parameter "context"

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 279
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 280
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 281
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 282
    .local v1, config:Landroid/content/res/Configuration;
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, language:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/htc/hfm/Speech;->languageToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 284
    new-instance v4, Landroid/content/res/Resources;

    .end local v4           #res:Landroid/content/res/Resources;
    invoke-direct {v4, v0, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 285
    .restart local v4       #res:Landroid/content/res/Resources;
    return-object v4
.end method

.method private insertSpaceBetweenDigits()V
    .locals 4

    .prologue
    .line 340
    iget-object v3, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 350
    :goto_0
    return-void

    .line 341
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 344
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method private languageToLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .parameter "language"

    .prologue
    .line 330
    const-string/jumbo v0, "zh_TW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    const-string/jumbo v0, "zh_CN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 141
    if-nez p0, :cond_1

    .line 148
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 144
    .restart local p0
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 145
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public convert(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 244
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertAudioResource(Landroid/content/Context;)V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertTextResource(Landroid/content/Context;)V

    goto :goto_0

    .line 250
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/hfm/Speech;->convertAudioFile(Landroid/content/Context;)V

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/hfm/Speech;->insertSpaceBetweenDigits()V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x2be
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getAudio()[B
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/htc/hfm/Speech;->mAudioType:I

    return v0
.end method

.method public getSpeechType()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mAudioType:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    .line 207
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/hfm/Speech;->mSpeechType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/htc/hfm/Speech;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/htc/hfm/Speech;->mAudio:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 192
    iget v0, p0, Lcom/htc/hfm/Speech;->mTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/htc/hfm/Speech;->mAudioResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
