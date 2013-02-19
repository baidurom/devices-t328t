.class public Lcom/htc/peopleyouknow/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/peopleyouknow/ContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public emailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mobilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rawContactID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/htc/peopleyouknow/ContactData$1;

    invoke-direct {v0}, Lcom/htc/peopleyouknow/ContactData$1;-><init>()V

    sput-object v0, Lcom/htc/peopleyouknow/ContactData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "rawcontactid"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->mobilesList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->emailsList:Ljava/util/List;

    .line 92
    iput-wide p1, p0, Lcom/htc/peopleyouknow/ContactData;->rawContactID:J

    .line 93
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->mobilesList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->emailsList:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/peopleyouknow/ContactData;->rawContactID:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->mobilesList:Ljava/util/List;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->emailsList:Ljava/util/List;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/ContactData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/peopleyouknow/ContactData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->emailsList:Ljava/util/List;

    return-object v0
.end method

.method public getMobilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->mobilesList:Ljava/util/List;

    return-object v0
.end method

.method public getRawContactID()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/htc/peopleyouknow/ContactData;->rawContactID:J

    return-wide v0
.end method

.method public setRawContactID(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/peopleyouknow/ContactData;->rawContactID:J

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/htc/peopleyouknow/ContactData;->rawContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->mobilesList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/htc/peopleyouknow/ContactData;->emailsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 113
    return-void
.end method
