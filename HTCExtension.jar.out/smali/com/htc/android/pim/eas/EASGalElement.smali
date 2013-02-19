.class public Lcom/htc/android/pim/eas/EASGalElement;
.super Ljava/lang/Object;
.source "EASGalElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/pim/eas/EASGalElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Alias:Ljava/lang/String;

.field public ClientId:Ljava/lang/String;

.field public Company:Ljava/lang/String;

.field public DisplayName:Ljava/lang/String;

.field public EmailAddress:Ljava/lang/String;

.field public FirstName:Ljava/lang/String;

.field public HomePhone:Ljava/lang/String;

.field public LastName:Ljava/lang/String;

.field public MobilePhone:Ljava/lang/String;

.field public Office:Ljava/lang/String;

.field public Phone:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/htc/android/pim/eas/EASGalElement$1;

    invoke-direct {v0}, Lcom/htc/android/pim/eas/EASGalElement$1;-><init>()V

    sput-object v0, Lcom/htc/android/pim/eas/EASGalElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/pim/eas/EASGalElement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/android/pim/eas/EASGalElement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->ClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getOffice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->ServerID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .parameter "alias"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .parameter "clientId"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->ClientId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .parameter "company"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "emailaddress"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstname"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setHomePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "homephone"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastname"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "mobilephone"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setOffice(Ljava/lang/String;)V
    .locals 0
    .parameter "office"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0
    .parameter "serverId"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->ServerID:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->DisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Office:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Company:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->Alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->FirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->LastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->HomePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->MobilePhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/android/pim/eas/EASGalElement;->EmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void
.end method
