.class public Lcom/htc/opensense/social/data/Page;
.super Lcom/htc/opensense/social/data/Extra;
.source "Page.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Page;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_TYPE_PAGE:Ljava/lang/String; = "GET_PAGE_INFO"

.field public static final INFO_TYPE_USER:Ljava/lang/String; = "GET_USER_INFO"

.field public static final PAGE:Ljava/lang/String; = "Page"


# instance fields
.field public canPost:Z

.field public company_overview:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fan_count:I

.field public founded:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public mission:Ljava/lang/String;

.field private page:Lcom/htc/opensense/social/data/Profile;

.field public page_url:Ljava/lang/String;

.field public products:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public website:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/htc/opensense/social/data/Page$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Page$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Page;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 68
    iput v1, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    .line 104
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    .line 165
    new-instance v2, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v2, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->location:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->iconUrl:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->type:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->description:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->page_url:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->website:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->founded:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->company_overview:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->mission:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/social/data/Page;->products:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Page;->setExtra(Landroid/os/Bundle;)V

    .line 179
    return-void

    :cond_0
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/opensense/social/data/Page$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/data/Page;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pid"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    .line 182
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    .line 183
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    iget-object v1, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Profile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    .line 184
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 222
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/social/data/Page;

    .line 224
    .local v0, p:Lcom/htc/opensense/social/data/Page;
    iget-object v1, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iget-object v2, v0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCompany_overview()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->company_overview:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFan_count()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    return v0
.end method

.method public getFounded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->founded:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->mission:Ljava/lang/String;

    return-object v0
.end method

.method public getPage_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->page_url:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->products:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Profile;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isCanPost()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    return v0
.end method

.method public setCanPost(Z)V
    .locals 0
    .parameter "canPost"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    .line 380
    return-void
.end method

.method public setCompany_overview(Ljava/lang/String;)V
    .locals 0
    .parameter "company_overview"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->company_overview:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->description:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setFan_count(I)V
    .locals 0
    .parameter "fan_count"

    .prologue
    .line 319
    iput p1, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    .line 320
    return-void
.end method

.method public setFounded(Ljava/lang/String;)V
    .locals 0
    .parameter "founded"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->founded:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->iconUrl:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->location:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setMission(Ljava/lang/String;)V
    .locals 0
    .parameter "mission"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->mission:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setPage_url(Ljava/lang/String;)V
    .locals 0
    .parameter "page_url"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->page_url:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setProducts(Ljava/lang/String;)V
    .locals 0
    .parameter "products"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->products:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->type:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .parameter "website"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/opensense/social/data/Page;->website:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->page:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->page_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->website:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/htc/opensense/social/data/Page;->fan_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->founded:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->company_overview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->mission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/htc/opensense/social/data/Page;->products:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Page;->canPost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/opensense/social/data/Extra;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 214
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
