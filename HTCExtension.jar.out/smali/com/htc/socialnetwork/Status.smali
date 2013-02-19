.class public Lcom/htc/socialnetwork/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mStatusId:J

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    return-wide v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/socialnetwork/Status;->mMessage:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setStatusId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mStatusId:J

    .line 43
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/htc/socialnetwork/Status;->mTime:J

    .line 15
    return-void
.end method
