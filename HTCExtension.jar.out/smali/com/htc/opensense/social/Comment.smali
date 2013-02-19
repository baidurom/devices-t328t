.class public Lcom/htc/opensense/social/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field extra:Landroid/os/Bundle;

.field fromId:Ljava/lang/String;

.field id:Ljava/lang/String;

.field text:Ljava/lang/String;

.field time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/htc/opensense/social/Comment$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Comment$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Comment;->id:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Comment;->fromId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/social/Comment;->time:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Comment;->text:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Comment;->extra:Landroid/os/Bundle;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/htc/opensense/social/Comment;->time:J

    return-wide v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/opensense/social/Comment;->extra:Landroid/os/Bundle;

    .line 82
    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0
    .parameter "fromId"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/opensense/social/Comment;->fromId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/opensense/social/Comment;->id:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/opensense/social/Comment;->text:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/htc/opensense/social/Comment;->time:J

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->fromId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/htc/opensense/social/Comment;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/opensense/social/Comment;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method
