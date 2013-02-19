.class Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReqConnectionClient"
.end annotation


# instance fields
.field private lastestReqTime:J

.field private macAddress:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "mac"
    .parameter "time"

    .prologue
    .line 278
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 280
    iput-wide p3, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    .line 281
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    return-wide v0
.end method

.method public setLastestReqTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 296
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->lastestReqTime:J

    .line 297
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .parameter "mac"

    .prologue
    .line 292
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->macAddress:Ljava/lang/String;

    .line 293
    return-void
.end method
