.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HProfileOrganizationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field public static final enum Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field public static final enum Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31220
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    const-string v1, "Work"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 31221
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 31218
    new-array v0, v4, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 31240
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 31260
    new-array v0, v4, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    .line 31279
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 31280
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 31273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31274
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->index:I

    .line 31275
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->value:I

    .line 31276
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 31257
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31237
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1
    .parameter "value"

    .prologue
    .line 31228
    packed-switch p0, :pswitch_data_0

    .line 31231
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31229
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Work:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    goto :goto_0

    .line 31230
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->Other:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    goto :goto_0

    .line 31228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 31265
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 31266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31269
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 31218
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;
    .locals 1

    .prologue
    .line 31218
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 31253
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 31225
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 31249
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$HProfileOrganizationType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
