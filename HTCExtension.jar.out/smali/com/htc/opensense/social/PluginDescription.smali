.class public Lcom/htc/opensense/social/PluginDescription;
.super Ljava/lang/Object;
.source "PluginDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/PluginDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final authDescription:Landroid/accounts/AuthenticatorDescription;

.field public final packageName:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/htc/opensense/social/PluginDescription$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/PluginDescription$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/PluginDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->packageName:Ljava/lang/String;

    .line 74
    const-class v0, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    iput-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->authDescription:Landroid/accounts/AuthenticatorDescription;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/PluginDescription$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/PluginDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->packageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->authDescription:Landroid/accounts/AuthenticatorDescription;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "packageName"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/social/PluginDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V
    .locals 2
    .parameter "type"
    .parameter "packageName"
    .parameter "authDescription"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/htc/opensense/social/PluginDescription;->packageName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/htc/opensense/social/PluginDescription;->authDescription:Landroid/accounts/AuthenticatorDescription;

    .line 53
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Lcom/htc/opensense/social/PluginDescription;
    .locals 2
    .parameter "type"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    new-instance v0, Lcom/htc/opensense/social/PluginDescription;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/PluginDescription;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 114
    if-ne p1, p0, :cond_0

    .line 115
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/htc/opensense/social/PluginDescription;

    if-nez v1, :cond_1

    .line 117
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/htc/opensense/social/PluginDescription;

    .line 119
    .local v0, other:Lcom/htc/opensense/social/PluginDescription;
    iget-object v1, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAuthDescription()Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->authDescription:Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginDescription {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/opensense/social/PluginDescription;->authDescription:Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    return-void
.end method
