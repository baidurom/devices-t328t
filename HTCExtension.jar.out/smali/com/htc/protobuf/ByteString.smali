.class public final Lcom/htc/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/ByteString$1;,
        Lcom/htc/protobuf/ByteString$CodedBuilder;,
        Lcom/htc/protobuf/ByteString$Output;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/htc/protobuf/ByteString;


# instance fields
.field private final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/htc/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/htc/protobuf/ByteString;->EMPTY:Lcom/htc/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter "bytes"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    .line 50
    iput-object p1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    .line 51
    return-void
.end method

.method synthetic constructor <init>([BLcom/htc/protobuf/ByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-void
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/protobuf/ByteString;
    .locals 2
    .parameter "text"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/htc/protobuf/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom([B)Lcom/htc/protobuf/ByteString;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 110
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static copyFrom([BII)Lcom/htc/protobuf/ByteString;
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 101
    new-array v0, p2, [B

    .line 102
    .local v0, copy:[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    new-instance v1, Lcom/htc/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/htc/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/htc/protobuf/ByteString;
    .locals 3
    .parameter "text"

    .prologue
    .line 136
    :try_start_0
    new-instance v1, Lcom/htc/protobuf/ByteString;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/protobuf/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static newCodedBuilder(I)Lcom/htc/protobuf/ByteString$CodedBuilder;
    .locals 2
    .parameter "size"

    .prologue
    .line 382
    new-instance v0, Lcom/htc/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;-><init>(ILcom/htc/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/htc/protobuf/ByteString$Output;
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/htc/protobuf/ByteString;->newOutput(I)Lcom/htc/protobuf/ByteString$Output;

    move-result-object v0

    return-object v0
.end method

.method public static newOutput(I)Lcom/htc/protobuf/ByteString$Output;
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .line 330
    new-instance v0, Lcom/htc/protobuf/ByteString$Output;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/protobuf/ByteString$Output;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/htc/protobuf/ByteString$1;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public byteAt(I)B
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public copyTo([BI)V
    .locals 3
    .parameter "target"
    .parameter "offset"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    return-void
.end method

.method public copyTo([BIII)V
    .locals 1
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "size"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 237
    if-ne p1, p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v5

    .line 241
    :cond_1
    instance-of v7, p1, Lcom/htc/protobuf/ByteString;

    if-nez v7, :cond_2

    move v5, v6

    .line 242
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 245
    check-cast v1, Lcom/htc/protobuf/ByteString;

    .line 246
    .local v1, other:Lcom/htc/protobuf/ByteString;
    iget-object v7, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v3, v7

    .line 247
    .local v3, size:I
    iget-object v7, v1, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_3

    move v5, v6

    .line 248
    goto :goto_0

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    .line 252
    .local v4, thisBytes:[B
    iget-object v2, v1, Lcom/htc/protobuf/ByteString;->bytes:[B

    .line 253
    .local v2, otherBytes:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 254
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 255
    goto :goto_0

    .line 253
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 270
    iget v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    .line 272
    .local v0, h:I
    if-nez v0, :cond_2

    .line 273
    iget-object v3, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    .line 274
    .local v3, thisBytes:[B
    iget-object v4, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v2, v4

    .line 276
    .local v2, size:I
    move v0, v2

    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 278
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    if-nez v0, :cond_1

    .line 281
    const/4 v0, 0x1

    .line 284
    :cond_1
    iput v0, p0, Lcom/htc/protobuf/ByteString;->hash:I

    .line 287
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #thisBytes:[B
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCodedInput()Lcom/htc/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v0}, Lcom/htc/protobuf/CodedInputStream;->newInstance([B)Lcom/htc/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 301
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    array-length v1, v2

    .line 182
    .local v1, size:I
    new-array v0, v1, [B

    .line 183
    .local v0, copy:[B
    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toStringUtf8()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/protobuf/ByteString;->bytes:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
