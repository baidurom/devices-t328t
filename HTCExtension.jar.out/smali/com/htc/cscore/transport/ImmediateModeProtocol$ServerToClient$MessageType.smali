.class public final enum Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
.super Ljava/lang/Enum;
.source "ImmediateModeProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field public static final enum DataPending:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field public static final enum GetLocation:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field public static final enum InvalidCredential:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field public static final enum Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field public static final enum Ring:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field private static final VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    const-string v1, "Nop"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 124
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    const-string v1, "DataPending"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->DataPending:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 125
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    const-string v1, "Ring"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Ring:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 126
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    const-string v1, "GetLocation"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->GetLocation:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 127
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    const-string v1, "InvalidCredential"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->InvalidCredential:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->DataPending:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Ring:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->GetLocation:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->InvalidCredential:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 149
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 169
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->DataPending:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Ring:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->GetLocation:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->InvalidCredential:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 188
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 189
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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p3, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->index:I

    .line 184
    iput p4, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->value:I

    .line 185
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

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
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1
    .parameter "value"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    goto :goto_0

    .line 136
    :pswitch_1
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->DataPending:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Ring:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    goto :goto_0

    .line 138
    :pswitch_3
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->GetLocation:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    goto :goto_0

    .line 139
    :pswitch_4
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->InvalidCredential:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->$VALUES:[Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
