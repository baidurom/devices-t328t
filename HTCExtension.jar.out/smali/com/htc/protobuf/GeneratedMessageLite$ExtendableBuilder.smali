.class public abstract Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/htc/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<TMessageType;>;BuilderType:",
        "Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/htc/protobuf/GeneratedMessageLite$Builder",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 290
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final addExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 390
    .local v0, message:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 391
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 392
    return-object p0
.end method

.method public final clearExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 403
    .local v0, message:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 404
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/FieldSet;->clearField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)V

    .line 405
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

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
    .line 281
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;)TType;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;I)TType;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getExtensionCount(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;)I"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)I

    move-result v0

    return v0
.end method

.method public final hasExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;*>;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 281
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method protected final mergeExtensionFields(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, other:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"TMessageType;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/FieldSet;->mergeFrom(Lcom/htc/protobuf/FieldSet;)V

    .line 520
    return-void
.end method

.method protected parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z
    .locals 12
    .parameter "input"
    .parameter "extensionRegistry"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v10

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v2

    .line 424
    .local v2, extensions:Lcom/htc/protobuf/FieldSet;,"Lcom/htc/protobuf/FieldSet<Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-static {p3}, Lcom/htc/protobuf/WireFormat;->getTagWireType(I)I

    move-result v9

    .line 425
    .local v9, wireType:I
    invoke-static {p3}, Lcom/htc/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 427
    .local v3, fieldNumber:I
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/htc/protobuf/GeneratedMessageLite;

    move-result-object v10

    invoke-virtual {p2, v10, v3}, Lcom/htc/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/htc/protobuf/MessageLite;I)Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v1

    .line 431
    .local v1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    if-eqz v1, :cond_0

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v11

    invoke-static {v10, v11}, Lcom/htc/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/htc/protobuf/WireFormat$FieldType;Z)I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 436
    :cond_0
    invoke-virtual {p1, p3}, Lcom/htc/protobuf/CodedInputStream;->skipField(I)Z

    move-result v10

    .line 511
    :goto_0
    return v10

    .line 439
    :cond_1
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 440
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 441
    .local v4, length:I
    invoke-virtual {p1, v4}, Lcom/htc/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    .line 442
    .local v5, limit:I
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/htc/protobuf/WireFormat$FieldType;->ENUM:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_3

    .line 443
    :goto_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_4

    .line 444
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 445
    .local v6, rawValue:I
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/htc/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;

    move-result-object v8

    .line 447
    .local v8, value:Lcom/htc/protobuf/Internal$EnumLite;
    if-nez v8, :cond_2

    .line 450
    const/4 v10, 0x1

    goto :goto_0

    .line 452
    :cond_2
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1

    .line 455
    .end local v6           #rawValue:I
    .end local v8           #value:Lcom/htc/protobuf/Internal$EnumLite;
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v10

    if-lez v10, :cond_4

    .line 456
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v8

    .line 459
    .local v8, value:Ljava/lang/Object;
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 462
    .end local v8           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, v5}, Lcom/htc/protobuf/CodedInputStream;->popLimit(I)V

    .line 511
    .end local v4           #length:I
    .end local v5           #limit:I
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 465
    :cond_5
    sget-object v10, Lcom/htc/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$htc$protobuf$WireFormat$JavaType:[I

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 499
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    invoke-static {p1, v10}, Lcom/htc/protobuf/FieldSet;->readPrimitiveField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v8

    .line 504
    :cond_6
    :goto_4
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 505
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->addRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 467
    :pswitch_0
    const/4 v7, 0x0

    .line 468
    .local v7, subBuilder:Lcom/htc/protobuf/MessageLite$Builder;
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v10

    if-nez v10, :cond_7

    .line 469
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/htc/protobuf/FieldSet;->getField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/MessageLite;

    .line 471
    .local v0, existingValue:Lcom/htc/protobuf/MessageLite;
    if-eqz v0, :cond_7

    .line 472
    invoke-interface {v0}, Lcom/htc/protobuf/MessageLite;->toBuilder()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 475
    .end local v0           #existingValue:Lcom/htc/protobuf/MessageLite;
    :cond_7
    if-nez v7, :cond_8

    .line 476
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/htc/protobuf/MessageLite;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$500(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/protobuf/MessageLite;->newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;

    move-result-object v7

    .line 478
    :cond_8
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/htc/protobuf/WireFormat$FieldType;

    move-result-object v10

    sget-object v11, Lcom/htc/protobuf/WireFormat$FieldType;->GROUP:Lcom/htc/protobuf/WireFormat$FieldType;

    if-ne v10, v11, :cond_9

    .line 480
    invoke-virtual {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v10

    invoke-virtual {p1, v10, v7, p2}, Lcom/htc/protobuf/CodedInputStream;->readGroup(ILcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 485
    :goto_5
    invoke-interface {v7}, Lcom/htc/protobuf/MessageLite$Builder;->build()Lcom/htc/protobuf/MessageLite;

    move-result-object v8

    .line 486
    .local v8, value:Lcom/htc/protobuf/MessageLite;
    goto :goto_4

    .line 483
    .end local v8           #value:Lcom/htc/protobuf/MessageLite;
    :cond_9
    invoke-virtual {p1, v7, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    goto :goto_5

    .line 489
    .end local v7           #subBuilder:Lcom/htc/protobuf/MessageLite$Builder;
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 490
    .restart local v6       #rawValue:I
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/htc/protobuf/Internal$EnumLiteMap;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/htc/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;

    move-result-object v8

    .line 494
    .local v8, value:Lcom/htc/protobuf/Internal$EnumLite;
    if-nez v8, :cond_6

    .line 495
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 507
    .end local v6           #rawValue:I
    .end local v8           #value:Lcom/htc/protobuf/Internal$EnumLite;
    :cond_a
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {v1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v10

    invoke-virtual {v2, v10, v8}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;ILjava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;",
            "Ljava/util/List",
            "<TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;Ljava/util/List<TType;>;>;"
    .local p3, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 376
    .local v0, message:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 377
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/htc/protobuf/FieldSet;->setRepeatedField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    .line 378
    return-object p0
.end method

.method public final setExtension(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder<TMessageType;TBuilderType;>;"
    .local p1, extension:Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;TType;>;"
    .local p2, value:Ljava/lang/Object;,"TType;"
    invoke-virtual {p0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableBuilder;->internalGetResult()Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    .line 362
    .local v0, message:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>;"
    #calls: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    invoke-static {v0, p1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$400(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 363
    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v1

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-static {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->access$000(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/protobuf/FieldSet;->setField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 364
    return-object p0
.end method
