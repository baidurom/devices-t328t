.class public final enum Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
.super Ljava/lang/Enum;
.source "QosServiceFlowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eSF_TRAFFIC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

.field public static final enum SF_TRAFFIC_TYPE_TCP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

.field public static final enum SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    const-string v1, "SF_TRAFFIC_TYPE_TCP"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_TCP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 69
    new-instance v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    const-string v1, "SF_TRAFFIC_TYPE_UDP"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_TCP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 67
    const-class v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->$VALUES:[Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-object v0
.end method
