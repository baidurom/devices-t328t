.class Lcom/android/server/ConnectivityService$HtcConnSrvHistory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcConnSrvHistory"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public event:I

.field public pid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field public timeStamp:J

.field public uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 7354
    iput-object p1, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7354
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 7362
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7363
    .local v0, builder:Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->event:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7365
    iget-object v4, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:[Ljava/lang/Object;

    array-length v1, v4

    .line 7366
    .local v1, hisargs:I
    :goto_0
    if-lez v1, :cond_1

    .line 7367
    iget-object v4, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:[Ljava/lang/Object;

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7368
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 7369
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService$HtcConnSrvHistory;->args:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7368
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #hisargs:I
    .end local v2           #i:I
    :cond_0
    move v1, v3

    .line 7365
    goto :goto_0

    .line 7373
    .restart local v1       #hisargs:I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
