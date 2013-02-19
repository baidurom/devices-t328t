.class public final Lcom/htc/protobuf/CodedOutputStream;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final output:Ljava/io/OutputStream;

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter "output"
    .parameter "buffer"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 77
    iput-object p2, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 79
    array-length v0, p2

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    .line 80
    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    .line 70
    iput-object p1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    .line 71
    iput p2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 72
    add-int v0, p2, p3

    iput v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    .line 73
    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 653
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1
    .parameter "value"

    .prologue
    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public static computeBytesSize(ILcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 711
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 574
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1
    .parameter "value"

    .prologue
    .line 824
    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 732
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1010
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 640
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 901
    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 627
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 889
    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 586
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 675
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 943
    invoke-interface {p0}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 614
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 872
    if-ltz p0, :cond_0

    .line 873
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    .line 876
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 606
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 860
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSetExtensionSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 702
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 972
    invoke-interface {p0}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    .line 973
    .local v0, size:I
    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawMessageSetExtensionSize(ILcom/htc/protobuf/ByteString;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 808
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSize(ILcom/htc/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1254
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1258
    :goto_0
    return v0

    .line 1255
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1256
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1257
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1258
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4
    .parameter "value"

    .prologue
    const-wide/16 v2, 0x0

    .line 1284
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1293
    :goto_0
    return v0

    .line 1285
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1286
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1287
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1288
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1289
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1290
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1291
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1292
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1293
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 745
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1022
    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 758
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1034
    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 766
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1046
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 778
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 1058
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 662
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 926
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 927
    .local v0, bytes:[B
    array-length v2, v0

    invoke-static {v2}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    array-length v3, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    return v2

    .line 929
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 930
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 not supported."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static computeTagSize(I)I
    .locals 1
    .parameter "fieldNumber"

    .prologue
    .line 1221
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 723
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 998
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 2
    .parameter "fieldNumber"
    .parameter "value"

    .prologue
    .line 598
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 1
    .parameter "value"

    .prologue
    .line 848
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSize(ILcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    invoke-static {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static computeUnknownGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I
    .locals 1
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 960
    invoke-static {p0}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    return v0
.end method

.method public static encodeZigZag32(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 1352
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4
    .parameter "n"

    .prologue
    .line 1371
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;
    .locals 1
    .parameter "output"

    .prologue
    .line 91
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/io/OutputStream;I)Lcom/htc/protobuf/CodedOutputStream;
    .locals 2
    .parameter "output"
    .parameter "bufferSize"

    .prologue
    .line 104
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/htc/protobuf/CodedOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/htc/protobuf/CodedOutputStream;
    .locals 2
    .parameter "flatArray"

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance([BII)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/htc/protobuf/CodedOutputStream;
    .locals 1
    .parameter "flatArray"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 136
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;-><init>([BII)V

    return-object v0
.end method

.method private refreshBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1068
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v0}, Lcom/htc/protobuf/CodedOutputStream$OutOfSpaceException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1076
    iput v3, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 1077
    return-void
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1091
    :cond_0
    return-void
.end method

.method public spaceLeft()I
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 1103
    iget v0, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v0, v1

    return v0

    .line 1105
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 218
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 219
    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 443
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(ILcom/htc/protobuf/ByteString;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 268
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V

    .line 269
    return-void
.end method

.method public writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p1}, Lcom/htc/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 501
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 503
    return-void
.end method

.method public writeDouble(ID)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 149
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 150
    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 375
    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 289
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 290
    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 524
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 208
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 434
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 196
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 197
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 425
    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 160
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 161
    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 384
    return-void
.end method

.method public writeGroup(ILcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 236
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 237
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 238
    return-void
.end method

.method public writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-interface {p1, p0}, Lcom/htc/protobuf/MessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 466
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 186
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    if-ltz p1, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 178
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 179
    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 402
    return-void
.end method

.method public writeMessage(ILcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 262
    return-void
.end method

.method public writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-interface {p1}, Lcom/htc/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 491
    invoke-interface {p1, p0}, Lcom/htc/protobuf/MessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 492
    return-void
.end method

.method public writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 343
    invoke-virtual {p0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 344
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 345
    invoke-virtual {p0, v2, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 346
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 347
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1149
    iget v0, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    aput-byte p1, v0, v1

    .line 1154
    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(B)V

    .line 1159
    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([BII)V

    .line 1168
    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .parameter "value"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 1203
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    sub-int v0, v1, v2

    .line 1185
    .local v0, bytesWritten:I
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    iget v2, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1186
    add-int/2addr p2, v0

    .line 1187
    sub-int/2addr p3, v0

    .line 1188
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    iput v1, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    .line 1189
    invoke-direct {p0}, Lcom/htc/protobuf/CodedOutputStream;->refreshBuffer()V

    .line 1194
    iget v1, p0, Lcom/htc/protobuf/CodedOutputStream;->limit:I

    if-gt p3, v1, :cond_1

    .line 1196
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    iput p3, p0, Lcom/htc/protobuf/CodedOutputStream;->position:I

    goto :goto_0

    .line 1200
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/CodedOutputStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1302
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1303
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1304
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1305
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1306
    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1320
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1321
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1322
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1323
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1324
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1325
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1326
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1327
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1328
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/htc/protobuf/ByteString;)V
    .locals 3
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 360
    invoke-virtual {p0, v1, v2}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 361
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 362
    invoke-virtual {p0, v2, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytes(ILcom/htc/protobuf/ByteString;)V

    .line 363
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 364
    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1236
    return-void

    .line 1238
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1239
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1269
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1270
    return-void

    .line 1272
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawByte(I)V

    .line 1273
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 300
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 301
    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian32(I)V

    .line 533
    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 311
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 312
    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawLittleEndian64(J)V

    .line 542
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 318
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 319
    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 551
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 329
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 330
    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-static {p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 560
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 225
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 455
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 456
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawBytes([B)V

    .line 457
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "wireType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {p1, p2}, Lcom/htc/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 1213
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 279
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 280
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 512
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 172
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint64(J)V

    .line 393
    return-void
.end method

.method public writeUnknownGroup(ILcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "fieldNumber"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroup(ILcom/htc/protobuf/MessageLite;)V

    .line 255
    return-void
.end method

.method public writeUnknownGroupNoTag(Lcom/htc/protobuf/MessageLite;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    .line 482
    return-void
.end method
