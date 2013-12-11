.class public Landroid/drm/mobile1/DrmRawContent;
.super Ljava/lang/Object;
.source "DrmRawContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;,
        Landroid/drm/mobile1/DrmRawContent$DrmInputStream;
    }
.end annotation


# static fields
.field public static final DRM_COMBINED_DELIVERY:I = 0x2

.field public static final DRM_CONTENT_TRANSFER_ECODING_7BIT:I = 0x0

.field public static final DRM_CONTENT_TRANSFER_ECODING_8BIT:I = 0x1

.field public static final DRM_CONTENT_TRANSFER_ECODING_BASE64:I = 0x3

.field public static final DRM_CONTENT_TRANSFER_ECODING_BINARY:I = 0x2

.field public static final DRM_FORWARD_LOCK:I = 0x1

.field private static final DRM_MIMETYPE_CONTENT:I = 0x2

.field public static final DRM_MIMETYPE_CONTENT_STRING:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field private static final DRM_MIMETYPE_MESSAGE:I = 0x1

.field public static final DRM_MIMETYPE_MESSAGE_STRING:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final DRM_SEPARATE_DELIVERY:I = 0x3

.field public static final DRM_SEPARATE_DELIVERY_DM:I = 0x4

.field public static final DRM_UNKNOWN_DATA_LEN:I = -0x1

.field private static final JNI_DRM_EOF:I = -0x2

.field private static final JNI_DRM_FAILURE:I = -0x1

.field private static final JNI_DRM_SUCCESS:I = 0x0

.field private static final JNI_DRM_UNKNOWN_DATA_LEN:I = -0x3

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "DrmRawContent"


# instance fields
.field private id:I

.field private inData:Ljava/io/BufferedInputStream;

.field private inDataLen:I

.field private mediaType:Ljava/lang/String;

.field private rawType:I

.field private rightsIssuer:Ljava/lang/String;

.field private transferEncoding:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 925
    :try_start_0
    const-string v1, "drm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 927
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 928
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm1_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 5
    .parameter "inRawdata"
    .parameter "len"
    .parameter "mimeTypeStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput v4, p0, Landroid/drm/mobile1/DrmRawContent;->id:I

    .line 151
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x400

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Landroid/drm/mobile1/DrmRawContent;->inData:Ljava/io/BufferedInputStream;

    .line 152
    iput p2, p0, Landroid/drm/mobile1/DrmRawContent;->inDataLen:I

    .line 154
    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 161
    .local v0, mimeType:I
    :goto_0
    if-gtz p2, :cond_2

    .line 162
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "len must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0           #mimeType:I
    :cond_0
    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const/4 v0, 0x2

    .restart local v0       #mimeType:I
    goto :goto_0

    .line 159
    .end local v0           #mimeType:I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mimeType must be DRM_MIMETYPE_MESSAGE or DRM_MIMETYPE_CONTENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    .restart local v0       #mimeType:I
    :cond_2
    iget-object v1, p0, Landroid/drm/mobile1/DrmRawContent;->inData:Ljava/io/BufferedInputStream;

    iget v2, p0, Landroid/drm/mobile1/DrmRawContent;->inDataLen:I

    invoke-direct {p0, v1, v2, v0}, Landroid/drm/mobile1/DrmRawContent;->nativeConstructDrmContent(Ljava/io/InputStream;II)I

    move-result v1

    iput v1, p0, Landroid/drm/mobile1/DrmRawContent;->id:I

    .line 167
    const-string v1, "DrmRawContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/drm/mobile1/DrmRawContent;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v1, p0, Landroid/drm/mobile1/DrmRawContent;->id:I

    if-ne v4, v1, :cond_3

    .line 171
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeConstructDrmContent() returned JNI_DRM_FAILURE"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_3
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetRightsAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/mobile1/DrmRawContent;->rightsIssuer:Ljava/lang/String;

    .line 176
    const-string v1, "DrmRawContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rightsIssuer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/mobile1/DrmRawContent;->rightsIssuer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetDeliveryMethod()I

    move-result v1

    iput v1, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    .line 182
    const-string v1, "DrmRawContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rawType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v1, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    if-ne v4, v1, :cond_4

    .line 185
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeGetDeliveryMethod() returned JNI_DRM_FAILURE"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_4
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/drm/mobile1/DrmRawContent;->mediaType:Ljava/lang/String;

    .line 190
    const-string v1, "DrmRawContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mediaType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/mobile1/DrmRawContent;->mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Landroid/drm/mobile1/DrmRawContent;->mediaType:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 193
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeGetContentType() returned null"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_5
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentTransferEncoding()I

    move-result v1

    iput v1, p0, Landroid/drm/mobile1/DrmRawContent;->transferEncoding:I

    .line 200
    const-string v1, "DrmRawContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transferEncoding ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/drm/mobile1/DrmRawContent;->transferEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v1, p0, Landroid/drm/mobile1/DrmRawContent;->transferEncoding:I

    if-ne v4, v1, :cond_6

    .line 204
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeGetContentTransferEncoding() returned JNI_DRM_FAILURE"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_6
    return-void
.end method

.method static synthetic access$000(Landroid/drm/mobile1/DrmRawContent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/drm/mobile1/DrmRawContent;[BIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/mobile1/DrmRawContent;->nativeReadContent([BIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/drm/mobile1/DrmRawContent;[B[BII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/drm/mobile1/DrmRawContent;->nativeDrmDecrypt([B[BII)I

    move-result v0

    return v0
.end method

.method private native nativeConstructDrmContent(Ljava/io/InputStream;II)I
.end method

.method private native nativeDrmDecrypt([B[BII)I
.end method

.method private native nativeDrmEncrypt([B[BII)I
.end method

.method private native nativeGetBoundary()Ljava/lang/String;
.end method

.method private native nativeGetContentId()Ljava/lang/String;
.end method

.method private native nativeGetContentLength()I
.end method

.method private native nativeGetContentOffset()I
.end method

.method private native nativeGetContentTransferEncoding()I
.end method

.method private native nativeGetContentType()Ljava/lang/String;
.end method

.method private native nativeGetDeliveryMethod()I
.end method

.method private native nativeGetRightsAddress()Ljava/lang/String;
.end method

.method private native nativeReadContent([BIII)I
.end method


# virtual methods
.method public encrypt([B[BIZ)I
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "length"
    .parameter "containLastBlock"

    .prologue
    .line 392
    if-eqz p4, :cond_0

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/drm/mobile1/DrmRawContent;->nativeDrmEncrypt([B[BII)I

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/drm/mobile1/DrmRawContent;->nativeDrmEncrypt([B[BII)I

    move-result v0

    goto :goto_0
.end method

.method protected native finalize()V
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetBoundary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDecryptStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    .locals 2
    .parameter "rights"

    .prologue
    .line 282
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 287
    :cond_0
    new-instance v0, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;

    invoke-direct {v0, p0, p1}, Landroid/drm/mobile1/DrmRawContent$DrmInputDecryptStream;-><init>(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)V

    return-object v0
.end method

.method public getContentId(Landroid/drm/mobile1/DrmRights;)Ljava/lang/String;
    .locals 1
    .parameter "rights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInputStream(Landroid/drm/mobile1/DrmRights;)Ljava/io/InputStream;
    .locals 2
    .parameter "rights"

    .prologue
    .line 262
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 267
    :cond_0
    new-instance v0, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;

    invoke-direct {v0, p0, p1}, Landroid/drm/mobile1/DrmRawContent$DrmInputStream;-><init>(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)V

    return-object v0
.end method

.method public getContentLength(Landroid/drm/mobile1/DrmRights;)I
    .locals 4
    .parameter "rights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 315
    iget v2, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 320
    :cond_0
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentLength()I

    move-result v0

    .line 322
    .local v0, mediaLen:I
    if-ne v1, v0, :cond_1

    .line 323
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeGetContentLength() returned JNI_DRM_FAILURE"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_1
    const/4 v2, -0x3

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 328
    .end local v0           #mediaLen:I
    :cond_2
    return v0
.end method

.method public getContentOffset(Landroid/drm/mobile1/DrmRights;)I
    .locals 3
    .parameter "rights"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 353
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRawContent;->nativeGetContentOffset()I

    move-result v0

    .line 355
    .local v0, mediaOffset:I
    if-ne v1, v0, :cond_0

    .line 356
    new-instance v1, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v2, "nativeGetContentLength() returned JNI_DRM_FAILURE"

    invoke-direct {v1, v2}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_0
    const/4 v2, -0x3

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 361
    .end local v0           #mediaOffset:I
    :cond_1
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/drm/mobile1/DrmRawContent;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getRawType()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent;->rawType:I

    return v0
.end method

.method public getRightsAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/drm/mobile1/DrmRawContent;->rightsIssuer:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent;->id:I

    return v0
.end method

.method public getTransferEncoding()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/drm/mobile1/DrmRawContent;->transferEncoding:I

    return v0
.end method
