.class final Lcom/htc/opensense/social/PluginDescription$1;
.super Ljava/lang/Object;
.source "PluginDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/PluginDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/opensense/social/PluginDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/PluginDescription;
    .locals 2
    .parameter "source"

    .prologue
    .line 139
    new-instance v0, Lcom/htc/opensense/social/PluginDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/opensense/social/PluginDescription;-><init>(Landroid/os/Parcel;Lcom/htc/opensense/social/PluginDescription$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/PluginDescription$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/PluginDescription;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense/social/PluginDescription;
    .locals 1
    .parameter "size"

    .prologue
    .line 144
    new-array v0, p1, [Lcom/htc/opensense/social/PluginDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/PluginDescription$1;->newArray(I)[Lcom/htc/opensense/social/PluginDescription;

    move-result-object v0

    return-object v0
.end method
