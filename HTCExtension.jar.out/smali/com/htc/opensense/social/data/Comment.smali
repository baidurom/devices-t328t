.class public Lcom/htc/opensense/social/data/Comment;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Comment.java"


# static fields
.field public static final ADD_COMMENT:Ljava/lang/String; = "add comment"

.field public static final REMOVE_COMMENT:Ljava/lang/String; = "remove comment"

.field public static final TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field public profile:Lcom/htc/opensense/social/data/Profile;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        notNull = true
        value = "owner"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/opensense/social/data/Comment;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getProfile()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/htc/opensense/social/data/Comment;->time:J

    return-wide v0
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Profile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    .line 57
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense/social/data/Comment;->text:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/htc/opensense/social/data/Comment;->time:J

    .line 65
    return-void
.end method
