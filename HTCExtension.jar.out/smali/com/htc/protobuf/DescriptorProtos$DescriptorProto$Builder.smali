.class public final Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "DescriptorProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2621
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2616
    invoke-direct {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2692
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 3

    .prologue
    .line 2624
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    invoke-direct {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;-><init>()V

    .line 2625
    .local v0, builder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    new-instance v1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v1, v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 2626
    return-object v0
.end method


# virtual methods
.method public addAllEnumType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3230
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3233
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3234
    return-object p0
.end method

.method public addAllExtension(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3056
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3059
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3060
    return-object p0
.end method

.method public addAllExtensionRange(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3317
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3320
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3321
    return-object p0
.end method

.method public addAllField(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2969
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2972
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2973
    return-object p0
.end method

.method public addAllNestedType(Ljava/lang/Iterable;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;)",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3143
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;>;"
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3146
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3147
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3221
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3222
    return-object p0
.end method

.method public addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3204
    if-nez p1, :cond_0

    .line 3205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3207
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3208
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3210
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3211
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3048
    return-object p0
.end method

.method public addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3030
    if-nez p1, :cond_0

    .line 3031
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3033
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3034
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3036
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3037
    return-object p0
.end method

.method public addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3308
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    return-object p0
.end method

.method public addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3291
    if-nez p1, :cond_0

    .line 3292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3294
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3295
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3297
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3298
    return-object p0
.end method

.method public addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2958
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2960
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2961
    return-object p0
.end method

.method public addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2943
    if-nez p1, :cond_0

    .line 2944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2946
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2947
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2949
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2950
    return-object p0
.end method

.method public addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3131
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3134
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3135
    return-object p0
.end method

.method public addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3117
    if-nez p1, :cond_0

    .line 3118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3120
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3121
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3123
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3124
    return-object p0
.end method

.method public build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 3

    .prologue
    .line 2703
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v1, :cond_0

    .line 2704
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2707
    :cond_0
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2708
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2711
    :cond_1
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 2712
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2715
    :cond_2
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 2716
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2719
    :cond_3
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 2720
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2723
    :cond_4
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 2724
    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v2, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2727
    :cond_5
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 2728
    .local v0, returnMe:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 2729
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-nez v0, :cond_0

    .line 2639
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2642
    :cond_0
    new-instance v0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;-><init>(Lcom/htc/protobuf/DescriptorProtos$1;)V

    iput-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 2643
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clear()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEnumType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3242
    return-object p0
.end method

.method public clearExtension()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3068
    return-object p0
.end method

.method public clearExtensionRange()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3328
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3329
    return-object p0
.end method

.method public clearField()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2981
    return-object p0
.end method

.method public clearName()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2893
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2894
    return-object p0
.end method

.method public clearNestedType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3154
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 3155
    return-object p0
.end method

.method public clearOptions()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x0

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 3389
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 3390
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2

    .prologue
    .line 2651
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->create()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->clone()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2668
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getDefaultInstanceForType()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2660
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRange(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    .locals 1
    .parameter "index"

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRange(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionRangeCount()I
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeCount()I

    move-result v0

    return v0
.end method

.method public getExtensionRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .parameter "index"

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypeCount()I
    .locals 1

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    return v0
.end method

.method public getNestedTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3077
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->internalGetResult()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

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
    .line 2616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2616
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 2616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2795
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2799
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2800
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2805
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2807
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2808
    :goto_1
    return-object p0

    .line 2802
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2813
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2817
    :sswitch_2
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 2818
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2819
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addField(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2823
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    .line 2824
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2825
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addNestedType(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2829
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    move-result-object v0

    .line 2830
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2831
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addEnumType(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2835
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v0

    .line 2836
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2837
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtensionRange(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2841
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    .line 2842
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2843
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->addExtension(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto :goto_0

    .line 2847
    .end local v0           #subBuilder:Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder()Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v0

    .line 2848
    .local v0, subBuilder:Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2849
    invoke-virtual {p0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    .line 2851
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 2852
    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    goto/16 :goto_0

    .line 2800
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2746
    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2784
    :goto_0
    return-object p0

    .line 2747
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2748
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 2750
    :cond_1
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2751
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2752
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3602(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2754
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2756
    :cond_3
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2757
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2758
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3702(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2760
    :cond_4
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2762
    :cond_5
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2763
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2764
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3802(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2766
    :cond_6
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2768
    :cond_7
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2769
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2770
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3902(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2772
    :cond_8
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2774
    :cond_9
    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2775
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2776
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4002(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 2778
    :cond_a
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2780
    :cond_b
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2781
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    .line 2783
    :cond_c
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2737
    instance-of v0, p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    if-eqz v0, :cond_0

    .line 2738
    check-cast p1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object p0

    .line 2741
    .end local p0
    :goto_0
    return-object p0

    .line 2740
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
    .line 2616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2616
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

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
    .line 2616
    invoke-virtual {p0, p1, p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-static {}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getDefaultInstance()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3375
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    iget-object v1, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4400(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->newBuilder(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->mergeFrom(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->buildPartial()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 3380
    :goto_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 3381
    return-object p0

    .line 3378
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    goto :goto_0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3197
    return-object p0
.end method

.method public setEnumType(ILcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3185
    if-nez p2, :cond_0

    .line 3186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3188
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->enumType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3900(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3189
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3023
    return-object p0
.end method

.method public setExtension(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3011
    if-nez p2, :cond_0

    .line 3012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3014
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extension_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3700(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3015
    return-object p0
.end method

.method public setExtensionRange(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3284
    return-object p0
.end method

.method public setExtensionRange(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3272
    if-nez p2, :cond_0

    .line 3273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3275
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->extensionRange_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4000(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3276
    return-object p0
.end method

.method public setField(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2936
    return-object p0
.end method

.method public setField(ILcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2924
    if-nez p2, :cond_0

    .line 2925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2927
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->field_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3600(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2928
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2880
    if-nez p1, :cond_0

    .line 2881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2883
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4102(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 2884
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4202(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Ljava/lang/String;)Ljava/lang/String;

    .line 2885
    return-object p0
.end method

.method public setNestedType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3110
    return-object p0
.end method

.method public setNestedType(ILcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3098
    if-nez p2, :cond_0

    .line 3099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3101
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #getter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->nestedType_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$3800(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3102
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 3365
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions$Builder;->build()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 3366
    return-object p0
.end method

.method public setOptions(Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3352
    if-nez p1, :cond_0

    .line 3353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3355
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    const/4 v1, 0x1

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->hasOptions:Z
    invoke-static {v0, v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4302(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Z)Z

    .line 3356
    iget-object v0, p0, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$Builder;->result:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    #setter for: Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->options_:Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    invoke-static {v0, p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->access$4402(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/DescriptorProtos$MessageOptions;)Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    .line 3357
    return-object p0
.end method
