.class public final Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3956
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3951
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4026
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4027
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4030
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 3

    .prologue
    .line 3959
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>()V

    .line 3960
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 3961
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4019
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4021
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 3

    .prologue
    .line 4038
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v1, :cond_0

    .line 4039
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4042
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 4043
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 4044
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-nez v0, :cond_0

    .line 3974
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3977
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .line 3978
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDefaultValue()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4420
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4421
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4422
    return-object p0
.end method

.method public clearExtendee()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4384
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4385
    return-object p0
.end method

.method public clearLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4273
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 4274
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4202
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4203
    return-object p0
.end method

.method public clearNumber()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4235
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4236
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    .line 4237
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4482
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 4483
    return-object p0
.end method

.method public clearType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4309
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5602(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4310
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    sget-object v1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5702(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 4311
    return-object p0
.end method

.method public clearTypeName()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5802(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4347
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5902(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4348
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3986
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 4003
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3995
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4364
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 4219
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .prologue
    .line 4438
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDefaultValue()Z
    .locals 1

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    return v0
.end method

.method public hasExtendee()Z
    .locals 1

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4175
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 4212
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 4431
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasTypeName()Z
    .locals 1

    .prologue
    .line 4320
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4011
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

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
    .line 3951
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3951
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 3951
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4098
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 4102
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 4103
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 4108
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4110
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 4111
    :goto_1
    return-object p0

    .line 4105
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 4116
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4120
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4124
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4128
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4129
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v4

    .line 4130
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    if-nez v4, :cond_1

    .line 4131
    const/4 v5, 0x4

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4133
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4138
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4139
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v4

    .line 4140
    .local v4, value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    if-nez v4, :cond_2

    .line 4141
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 4143
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4148
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4152
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto :goto_0

    .line 4156
    :sswitch_8
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    .line 4157
    .local v1, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->hasOptions()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4158
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    .line 4160
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 4161
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    goto/16 :goto_0

    .line 4103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4061
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4087
    :goto_0
    return-object p0

    .line 4062
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4063
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4065
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4066
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4068
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4069
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4071
    :cond_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4072
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4074
    :cond_4
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4075
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4077
    :cond_5
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4078
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4080
    :cond_6
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4081
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4083
    :cond_7
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4084
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 4086
    :cond_8
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4052
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    .line 4053
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p0

    .line 4056
    .end local p0
    :goto_0
    return-object p0

    .line 4055
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
    .line 3951
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3951
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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
    .line 3951
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4466
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6500(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4468
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6500(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 4473
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4474
    return-object p0

    .line 4471
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4408
    if-nez p1, :cond_0

    .line 4409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4411
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4412
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->defaultValue_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4413
    return-object p0
.end method

.method public setExtendee(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4371
    if-nez p1, :cond_0

    .line 4372
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4374
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4375
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->extendee_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4376
    return-object p0
.end method

.method public setLabel(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4260
    if-nez p1, :cond_0

    .line 4261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4263
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4264
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->label_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 4265
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4189
    if-nez p1, :cond_0

    .line 4190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4192
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5002(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4193
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5102(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4194
    return-object p0
.end method

.method public setNumber(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4226
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5202(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4227
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->number_:I
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5302(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    .line 4228
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4458
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 4459
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4445
    if-nez p1, :cond_0

    .line 4446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4448
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6402(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4449
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$FieldOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$6502(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldOptions;)Lcom/htc/protobuf/DescriptorProtos$FieldOptions;

    .line 4450
    return-object p0
.end method

.method public setType(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4297
    if-nez p1, :cond_0

    .line 4298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4300
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5602(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4301
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->type_:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5702(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    .line 4302
    return-object p0
.end method

.method public setTypeName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4334
    if-nez p1, :cond_0

    .line 4335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4337
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5802(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Z)Z

    .line 4338
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->typeName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->access$5902(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 4339
    return-object p0
.end method
