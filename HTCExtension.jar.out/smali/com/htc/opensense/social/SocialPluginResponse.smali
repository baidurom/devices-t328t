.class public Lcom/htc/opensense/social/SocialPluginResponse;
.super Ljava/lang/Object;
.source "SocialPluginResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/SocialPluginResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/htc/opensense/social/SocialPluginResponse$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/SocialPluginResponse$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/SocialPluginResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/social/ISocialPluginResponse$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/opensense/social/ISocialPluginResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/SocialPluginResponse;->mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;

    .line 19
    return-void
.end method

.method constructor <init>(Lcom/htc/opensense/social/ISocialPluginResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/htc/opensense/social/SocialPluginResponse;->mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialPluginResponse;->mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-interface {v0, p1, p2}, Lcom/htc/opensense/social/ISocialPluginResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/social/SocialPluginResponse;->mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-interface {v0, p1}, Lcom/htc/opensense/social/ISocialPluginResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/opensense/social/SocialPluginResponse;->mSocialPluginResponse:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-interface {v0}, Lcom/htc/opensense/social/ISocialPluginResponse;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 37
    return-void
.end method
