.class public final Lcom/htc/protobuf/DynamicMessage$Builder;
.super Lcom/htc/protobuf/AbstractMessage$Builder;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DynamicMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/AbstractMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DynamicMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fields:Lcom/htc/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/FieldSet",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private unknownFields:Lcom/htc/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessage$Builder;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 336
    invoke-static {}, Lcom/htc/protobuf/FieldSet;->newFieldSet()Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    .line 337
    invoke-static {}, Lcom/htc/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DynamicMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/protobuf/DynamicMessage$Builder;)Lcom/htc/protobuf/DynamicMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DynamicMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 588
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 553
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 554
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->addRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/htc/protobuf/DynamicMessage;
    .locals 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->build()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->build()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DynamicMessage;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 407
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-nez v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/htc/protobuf/FieldSet;->makeImmutable()V

    .line 412
    new-instance v0, Lcom/htc/protobuf/DynamicMessage;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v3, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/protobuf/DynamicMessage;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;Lcom/htc/protobuf/UnknownFieldSet;Lcom/htc/protobuf/DynamicMessage$1;)V

    .line 414
    .local v0, result:Lcom/htc/protobuf/DynamicMessage;
    iput-object v4, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    .line 415
    iput-object v4, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 416
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->clear()V

    .line 352
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clear()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 514
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 515
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->clearField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3

    .prologue
    .line 420
    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    .line 421
    .local v0, result:Lcom/htc/protobuf/DynamicMessage$Builder;
    iget-object v1, v0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    .line 422
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

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
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->clone()Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/protobuf/DynamicMessage$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 487
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 489
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v1, v2, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DynamicMessage;->getDefaultInstance(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/DynamicMessage;

    move-result-object v0

    .line 495
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 492
    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .parameter "field"
    .parameter "index"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 533
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->getRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .parameter "field"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 524
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 478
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/FieldSet;->hasField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    #calls: Lcom/htc/protobuf/DynamicMessage;->isInitialized(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DynamicMessage;->access$600(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 3
    .parameter "other"

    .prologue
    .line 360
    instance-of v1, p1, Lcom/htc/protobuf/DynamicMessage;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 362
    check-cast v0, Lcom/htc/protobuf/DynamicMessage;

    .line 363
    .local v0, otherDynamicMessage:Lcom/htc/protobuf/DynamicMessage;
    #getter for: Lcom/htc/protobuf/DynamicMessage;->type:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$200(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->type:Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eq v1, v2, :cond_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    #getter for: Lcom/htc/protobuf/DynamicMessage;->fields:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$300(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    .line 368
    #getter for: Lcom/htc/protobuf/DynamicMessage;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/DynamicMessage;->access$400(Lcom/htc/protobuf/DynamicMessage;)Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    .line 371
    .end local v0           #otherDynamicMessage:Lcom/htc/protobuf/DynamicMessage;
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DynamicMessage$Builder;

    move-object p0, v1

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "unknownFields"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    invoke-static {v0}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 583
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 2
    .parameter "field"

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 464
    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DynamicMessage$Builder;

    invoke-virtual {p1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DynamicMessage$Builder;-><init>(Lcom/htc/protobuf/Descriptors$Descriptor;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->newBuilderForField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 504
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 505
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DynamicMessage$Builder;->setField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 1
    .parameter "field"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->verifyContainingType(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 543
    iget-object v0, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->fields:Lcom/htc/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 544
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/protobuf/DynamicMessage$Builder;->setRepeatedField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;
    .locals 0
    .parameter "unknownFields"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/htc/protobuf/DynamicMessage$Builder;->unknownFields:Lcom/htc/protobuf/UnknownFieldSet;

    .line 571
    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DynamicMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method
