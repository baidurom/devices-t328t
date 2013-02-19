.class public Lcom/htc/opensense/social/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field extra:Landroid/os/Bundle;

.field id:Ljava/lang/String;

.field subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/opensense/social/Tag$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/Tag$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Tag;->id:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Tag;->subject:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/Tag;->extra:Landroid/os/Bundle;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->extra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/opensense/social/Tag;->extra:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/opensense/social/Tag;->id:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/opensense/social/Tag;->subject:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/opensense/social/Tag;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method
