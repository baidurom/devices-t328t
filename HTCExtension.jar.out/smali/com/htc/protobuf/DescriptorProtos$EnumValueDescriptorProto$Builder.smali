.class public final Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5396
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7800(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5466
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5467
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5470
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 5399
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>()V

    .line 5400
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 5401
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5459
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5461
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 3

    .prologue
    .line 5478
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v1, :cond_0

    .line 5479
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5482
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 5483
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 5484
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 5413
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-nez v0, :cond_0

    .line 5414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5417
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .line 5418
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 5594
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8102(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5595
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8202(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 5596
    return-object p0
.end method

.method public clearNumber()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5628
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8302(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5629
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8402(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I

    .line 5630
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 5689
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8502(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5690
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 5691
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 5426
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5443
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5435
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5575
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 5612
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .prologue
    .line 5646
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5568
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 5605
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 5639
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .prologue
    .line 5405
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5391
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5451
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5391
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5523
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 5527
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5528
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 5533
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5535
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 5536
    :goto_1
    return-object p0

    .line 5530
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5541
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    goto :goto_0

    .line 5545
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    goto :goto_0

    .line 5549
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    .line 5550
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5551
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    .line 5553
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5554
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    goto :goto_0

    .line 5528
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5501
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5512
    :goto_0
    return-object p0

    .line 5502
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5503
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 5505
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5506
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 5508
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5509
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 5511
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5492
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v0, :cond_0

    .line 5493
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p0

    .line 5496
    .end local p0
    :goto_0
    return-object p0

    .line 5495
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5391
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5391
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5674
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8600(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5676
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8600(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 5681
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8502(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5682
    return-object p0

    .line 5679
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5582
    if-nez p1, :cond_0

    .line 5583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5585
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8102(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5586
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8202(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 5587
    return-object p0
.end method

.method public setNumber(I)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5619
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8302(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5620
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8402(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I

    .line 5621
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5665
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8502(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5666
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 5667
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5653
    if-nez p1, :cond_0

    .line 5654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5656
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8502(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Z)Z

    .line 5657
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$8602(Lcom/htc/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/htc/protobuf/DescriptorProtos$EnumValueOptions;

    .line 5658
    return-object p0
.end method
