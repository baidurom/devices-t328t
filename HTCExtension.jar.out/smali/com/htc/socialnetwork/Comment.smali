.class public Lcom/htc/socialnetwork/Comment;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field fromId:Ljava/lang/String;

.field id:Ljava/lang/String;

.field text:Ljava/lang/String;

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/socialnetwork/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/htc/socialnetwork/Comment;->time:J

    return-wide v0
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0
    .parameter "fromId"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->fromId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/socialnetwork/Comment;->text:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/htc/socialnetwork/Comment;->time:J

    .line 68
    return-void
.end method
