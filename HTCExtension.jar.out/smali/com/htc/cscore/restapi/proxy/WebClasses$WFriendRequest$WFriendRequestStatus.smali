.class public final enum Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;
.super Ljava/lang/Enum;
.source "WebClasses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WFriendRequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Blocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Friends:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Invite:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Pending:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Potential:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

.field public static final enum Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 885
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 886
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Potential"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Potential:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 887
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Pending:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 888
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Friends"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Friends:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 889
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Blocked"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Blocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 890
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    const-string v1, "Invite"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Invite:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    .line 884
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Unknown:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Potential:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Pending:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Friends:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Blocked:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->Invite:Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

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
    .line 884
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 884
    const-class v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;
    .locals 1

    .prologue
    .line 884
    sget-object v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->$VALUES:[Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    invoke-virtual {v0}, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/restapi/proxy/WebClasses$WFriendRequest$WFriendRequestStatus;

    return-object v0
.end method
