.class public Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtensionWriter"
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageSetWireFormat:Z

.field private next:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V
    .locals 1
    .parameter
    .parameter "messageSetWireFormat"

    .prologue
    .line 214
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    iput-object p1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->this$0:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->this$0:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;

    #getter for: Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/htc/protobuf/FieldSet;
    invoke-static {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;)Lcom/htc/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    .line 215
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    .line 218
    :cond_0
    iput-boolean p2, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;ZLcom/htc/protobuf/GeneratedMessageLite$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;-><init>(Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage;Z)V

    return-void
.end method


# virtual methods
.method public writeUntil(ILcom/htc/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "end"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage<TMessageType;>.ExtensionWriter;"
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 229
    .local v0, extension:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    iget-boolean v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->messageSetWireFormat:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/htc/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/htc/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/htc/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v2

    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/MessageLite;

    invoke-virtual {p2, v2, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V

    .line 237
    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_1

    .line 240
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->next:Ljava/util/Map$Entry;

    goto :goto_0

    .line 243
    .end local v0           #extension:Lcom/htc/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    :cond_2
    return-void
.end method
