.class public Lcom/htc/opensense/social/Activity;
.super Lcom/htc/opensense/social/Core;
.source "Activity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activity_type:Ljava/lang/String;

.field description:Ljava/lang/String;

.field endTime:J

.field iconUrl:Ljava/lang/String;

.field id:Ljava/lang/String;

.field lastupdate_time:J

.field location:Ljava/lang/String;

.field owner_id:Ljava/lang/String;

.field priority:I

.field privacy:Ljava/lang/String;

.field sourceUrl:Ljava/lang/String;

.field startTime:J

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/htc/opensense/social/Activity$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Activity$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Activity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/opensense/social/Core;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    .line 64
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    return-object v0
.end method

.method public getComments()[Lcom/htc/opensense/social/Comment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    const-string v1, "Activity"

    iget-object v2, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getComments(Ljava/lang/String;Ljava/lang/String;)[Lcom/htc/opensense/social/Comment;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    return-wide v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()[Lcom/htc/opensense/social/Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iget-object v1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/htc/opensense/social/ISocialInterfaceProxy;->getEventMembers(Ljava/lang/String;)[Lcom/htc/opensense/social/Person;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/htc/opensense/social/Activity;->priority:I

    return v0
.end method

.method public getPrivacy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "Activity"

    return-object v0
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0
    .parameter "activityType"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "descp"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    .line 231
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->iconUrl:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter "lastupdateTime"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    .line 183
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->location:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerId"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 278
    iput p1, p0, Lcom/htc/opensense/social/Activity;->priority:I

    .line 279
    return-void
.end method

.method public setPrivacy(Ljava/lang/String;)V
    .locals 0
    .parameter "privacy"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceUrl"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->sourceUrl:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "startTime"

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    .line 215
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->activity_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->lastupdate_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/Activity;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-wide v0, p0, Lcom/htc/opensense/social/Activity;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 95
    return-void
.end method
