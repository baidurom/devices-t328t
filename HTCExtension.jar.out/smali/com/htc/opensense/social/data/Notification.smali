.class public Lcom/htc/opensense/social/data/Notification;
.super Lcom/htc/opensense/social/data/Attachment;
.source "Notification.java"


# instance fields
.field public requestId:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "request_id"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "text"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "type"
    .end annotation
.end field

.field public unread:I
    .annotation runtime Lcom/htc/opensense/social/data/Attachment$Key;
        value = "unread"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/opensense/social/data/Notification;

    invoke-direct {p0, v0}, Lcom/htc/opensense/social/data/Attachment;-><init>(Ljava/lang/Class;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/social/data/Notification;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense/social/data/Notification;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense/social/data/Notification;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/opensense/social/data/Notification;->unread:I

    return v0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/social/data/Notification;->requestId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/opensense/social/data/Notification;->text:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/opensense/social/data/Notification;->type:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUnread(I)V
    .locals 0
    .parameter "unread"

    .prologue
    .line 92
    iput p1, p0, Lcom/htc/opensense/social/data/Notification;->unread:I

    .line 93
    return-void
.end method
