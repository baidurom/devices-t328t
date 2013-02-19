.class final Lcom/htc/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/FieldSet$1;,
        Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;


# instance fields
.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/htc/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/htc/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    .line 80
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "dummy"

    .prologue
    .line 86
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    .line 88
    return-void
.end method

.method private static computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 2
    .parameter "type"
    .parameter "number"
    .parameter "value"

    .prologue
    .line 720
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 721
    .local v0, tagSize:I
    sget-object v1, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_0

    .line 722
    mul-int/lit8 v0, v0, 0x2

    .line 724
    :cond_0
    invoke-static {p0, p2}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 739
    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 765
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    .line 761
    :goto_0
    return v0

    .line 743
    .restart local p1
    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    goto :goto_0

    .line 744
    .restart local p1
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 745
    .restart local p1
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 746
    .restart local p1
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 747
    .restart local p1
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    goto :goto_0

    .line 748
    .restart local p1
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 749
    .restart local p1
    :pswitch_7
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    goto :goto_0

    .line 750
    .restart local p1
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 751
    .restart local p1
    :pswitch_9
    check-cast p1, Lcom/htc/protobuf/MessageLite;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    .line 752
    .restart local p1
    :pswitch_a
    check-cast p1, Lcom/htc/protobuf/MessageLite;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/htc/protobuf/MessageLite;)I

    move-result v0

    goto :goto_0

    .line 753
    .restart local p1
    :pswitch_b
    check-cast p1, Lcom/htc/protobuf/ByteString;

    .end local p1
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/htc/protobuf/ByteString;)I

    move-result v0

    goto :goto_0

    .line 754
    .restart local p1
    :pswitch_c
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 755
    .restart local p1
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_0

    .line 756
    .restart local p1
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    .line 757
    .restart local p1
    :pswitch_f
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 758
    .restart local p1
    :pswitch_10
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_0

    .line 761
    .restart local p1
    :pswitch_11
    check-cast p1, Lcom/htc/protobuf/Internal$EnumLite;

    .end local p1
    invoke-interface {p1}, Lcom/htc/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    goto/16 :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .locals 8
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"Lcom/htc/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v5

    .line 779
    .local v5, type:Lcom/htc/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    .line 780
    .local v3, number:I
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 781
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, dataSize:I
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 784
    .local v1, element:Ljava/lang/Object;
    invoke-static {v5, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    .line 786
    .end local v1           #element:Ljava/lang/Object;
    :cond_0
    invoke-static {v3}, Lcom/htc/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v0}, Lcom/htc/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v7

    add-int v4, v6, v7

    .line 797
    .end local v0           #dataSize:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return v4

    .line 790
    .restart local p1
    :cond_2
    const/4 v4, 0x0

    .line 791
    .local v4, size:I
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 792
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {v5, v3, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_2

    .line 797
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #size:I
    .restart local p1
    :cond_3
    invoke-static {v5, v3, p1}, Lcom/htc/protobuf/FieldSet;->computeElementSize(Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v4

    goto :goto_1
.end method

.method public static emptySet()Lcom/htc/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/htc/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/htc/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/htc/protobuf/FieldSet;

    return-object v0
.end method

.method static getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I
    .locals 1
    .parameter "type"
    .parameter "isPacked"

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    const/4 v0, 0x2

    .line 430
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    goto :goto_0
.end method

.method public static newFieldSet()Lcom/htc/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/htc/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/htc/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/htc/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;
    .locals 2
    .parameter "input"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 528
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 500
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 501
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 502
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 503
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 504
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 505
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 506
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 507
    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    .line 509
    :pswitch_a
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 511
    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 512
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 513
    :pswitch_e
    invoke-virtual {p0}, Lcom/htc/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 516
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 350
    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, isValid:Z
    sget-object v1, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/htc/protobuf/WireFormat$FieldType;->getJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 369
    :goto_0
    if-nez v0, :cond_1

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    .line 353
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 354
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 355
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 356
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 357
    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 358
    :pswitch_6
    instance-of v0, p1, Lcom/htc/protobuf/ByteString;

    goto :goto_0

    .line 361
    :pswitch_7
    instance-of v0, p1, Lcom/htc/protobuf/Internal$EnumLite;

    .line 362
    goto :goto_0

    .line 365
    :pswitch_8
    instance-of v0, p1, Lcom/htc/protobuf/MessageLite;

    goto :goto_0

    .line 380
    :cond_1
    return-void

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .parameter "output"
    .parameter "type"
    .parameter "number"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    sget-object v0, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 585
    check-cast p3, Lcom/htc/protobuf/MessageLite;

    .end local p3
    invoke-virtual {p0, p2, p3}, Lcom/htc/protobuf/CodedOutputStream;->writeGroup(ILcom/htc/protobuf/MessageLite;)V

    .line 590
    :goto_0
    return-void

    .line 587
    .restart local p3
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/htc/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 588
    invoke-static {p0, p1, p3}, Lcom/htc/protobuf/FieldSet;->writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .parameter "output"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    sget-object v0, Lcom/htc/protobuf/FieldSet$1;->$SwitchMap$com$htc$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/htc/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    .end local p2
    :goto_0
    return-void

    .line 607
    .restart local p2
    :pswitch_0
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    goto :goto_0

    .line 608
    .restart local p2
    :pswitch_1
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_0

    .line 609
    .restart local p2
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_0

    .line 610
    .restart local p2
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_0

    .line 611
    .restart local p2
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_0

    .line 612
    .restart local p2
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_0

    .line 613
    .restart local p2
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_0

    .line 614
    .restart local p2
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_0

    .line 615
    .restart local p2
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    .restart local p2
    :pswitch_9
    check-cast p2, Lcom/htc/protobuf/MessageLite;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 617
    .restart local p2
    :pswitch_a
    check-cast p2, Lcom/htc/protobuf/MessageLite;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 618
    .restart local p2
    :pswitch_b
    check-cast p2, Lcom/htc/protobuf/ByteString;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/htc/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/htc/protobuf/ByteString;)V

    goto :goto_0

    .line 619
    .restart local p2
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto :goto_0

    .line 620
    .restart local p2
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto :goto_0

    .line 621
    .restart local p2
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    .line 622
    .restart local p2
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    .line 623
    .restart local p2
    :pswitch_10
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_0

    .line 626
    .restart local p2
    :pswitch_11
    check-cast p2, Lcom/htc/protobuf/Internal$EnumLite;

    .end local p2
    invoke-interface {p2}, Lcom/htc/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method public static writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 7
    .parameter
    .parameter "value"
    .parameter "output"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/htc/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    .local p0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"Lcom/htc/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v4

    .line 641
    .local v4, type:Lcom/htc/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    .line 642
    .local v3, number:I
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v5, p1

    .line 643
    check-cast v5, Ljava/util/List;

    .line 644
    .local v5, valueList:Ljava/util/List;
    invoke-interface {p0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    const/4 v6, 0x2

    invoke-virtual {p2, v3, v6}, Lcom/htc/protobuf/CodedOutputStream;->writeTag(II)V

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, dataSize:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 649
    .local v1, element:Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/htc/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    .line 651
    .end local v1           #element:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, v0}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 653
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 654
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {p2, v4, v1}, Lcom/htc/protobuf/FieldSet;->writeElementNoTag(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 657
    .end local v0           #dataSize:I
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 658
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {p2, v4, v3, v1}, Lcom/htc/protobuf/FieldSet;->writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    .line 662
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #valueList:Ljava/util/List;
    :cond_2
    invoke-static {p2, v4, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeElement(Lcom/htc/protobuf/CodedOutputStream;Lcom/htc/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 664
    :cond_3
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_0
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 325
    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, existingValue:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v1, list:Ljava/util/List;
    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void

    .end local v1           #list:Ljava/util/List;
    :cond_1
    move-object v1, v0

    .line 331
    check-cast v1, Ljava/util/List;

    .restart local v1       #list:Ljava/util/List;
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 134
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    return-void
.end method

.method public clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .locals 6

    .prologue
    .line 691
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .line 693
    .local v3, size:I
    iget-object v4, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 694
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    .line 695
    .local v0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v4

    sget-object v5, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v4}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 700
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/protobuf/FieldSet;->computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 703
    .end local v0           #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return v3
.end method

.method public getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 275
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 277
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0           #value:Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 251
    const/4 v1, 0x0

    .line 253
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0           #value:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 675
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v2, 0x0

    .line 677
    .local v2, size:I
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/protobuf/FieldSet;->computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 680
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    return v2
.end method

.method public hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v6, 0x0

    .line 398
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 399
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    .line 400
    .local v0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v7, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v5, v7, :cond_0

    .line 401
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/MessageLite;

    .line 404
    .local v1, element:Lcom/htc/protobuf/MessageLite;
    invoke-interface {v1}, Lcom/htc/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 416
    .end local v0           #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v1           #element:Lcom/htc/protobuf/MessageLite;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_0
    return v5

    .line 409
    .restart local v0       #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/MessageLite;

    invoke-interface {v5}, Lcom/htc/protobuf/MessageLite;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 410
    goto :goto_0

    .line 416
    .end local v0           #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .locals 6

    .prologue
    .line 117
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 120
    .local v2, value:Ljava/util/List;
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2           #value:Ljava/util/List;
    :cond_1
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public mergeFrom(Lcom/htc/protobuf/FieldSet;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/FieldSet",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, other:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v5, p1, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 445
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    .line 446
    .local v0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 448
    .local v3, otherValue:Ljava/lang/Object;
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 449
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 450
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 454
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    .end local v3           #otherValue:Ljava/lang/Object;
    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    .restart local v3       #otherValue:Ljava/lang/Object;
    :cond_0
    check-cast v4, Ljava/util/List;

    .end local v4           #value:Ljava/lang/Object;
    check-cast v3, Ljava/util/List;

    .end local v3           #otherValue:Ljava/lang/Object;
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 459
    .restart local v3       #otherValue:Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v6, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v5, v6, :cond_3

    .line 460
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 461
    .restart local v4       #value:Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 462
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 465
    :cond_2
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    check-cast v4, Lcom/htc/protobuf/MessageLite;

    .end local v4           #value:Ljava/lang/Object;
    invoke-interface {v4}, Lcom/htc/protobuf/MessageLite;->toBuilder()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v6

    check-cast v3, Lcom/htc/protobuf/MessageLite;

    .end local v3           #otherValue:Ljava/lang/Object;
    invoke-interface {v0, v6, v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/MessageLite;)Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/protobuf/MessageLite$Builder;->build()Lcom/htc/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    .restart local v3       #otherValue:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    .end local v0           #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v3           #otherValue:Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    instance-of v3, p2, Ljava/util/List;

    if-nez v3, :cond_0

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong object type used with protocol message reflection."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, newList:Ljava/util/List;
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 213
    .local v0, element:Ljava/lang/Object;
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    .end local v0           #element:Ljava/lang/Object;
    :cond_1
    move-object p2, v2

    .line 220
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #newList:Ljava/util/List;
    :goto_1
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void

    .line 217
    .restart local p2
    :cond_2
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, list:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 300
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 303
    :cond_1
    invoke-interface {p1}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/htc/protobuf/FieldSet;->verifyType(Lcom/htc/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 304
    check-cast v0, Ljava/util/List;

    .end local v0           #list:Ljava/lang/Object;
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public writeMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v3, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 556
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    .line 557
    .local v0, descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v3}, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p1, v4, v3}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 565
    .end local v0           #descriptor:Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    .local p0, this:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v2, p0, Lcom/htc/protobuf/FieldSet;->fields:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 543
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
