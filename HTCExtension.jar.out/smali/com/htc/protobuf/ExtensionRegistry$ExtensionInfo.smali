.class public final Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/ExtensionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtensionInfo"
.end annotation


# instance fields
.field public final defaultInstance:Lcom/htc/protobuf/Message;

.field public final descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    .line 144
    return-void
.end method

.method private constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;)V
    .locals 0
    .parameter "descriptor"
    .parameter "defaultInstance"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 148
    iput-object p2, p0, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/htc/protobuf/Message;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;Lcom/htc/protobuf/ExtensionRegistry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/htc/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/Message;)V

    return-void
.end method
