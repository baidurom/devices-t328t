.class final Lcom/htc/peopleyouknow/ContactData$1;
.super Ljava/lang/Object;
.source "ContactData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/peopleyouknow/ContactData;
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
        "Lcom/htc/peopleyouknow/ContactData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/peopleyouknow/ContactData;
    .locals 2
    .parameter "source"

    .prologue
    .line 69
    new-instance v0, Lcom/htc/peopleyouknow/ContactData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/peopleyouknow/ContactData;-><init>(Landroid/os/Parcel;Lcom/htc/peopleyouknow/ContactData$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/htc/peopleyouknow/ContactData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/peopleyouknow/ContactData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/peopleyouknow/ContactData;
    .locals 1
    .parameter "size"

    .prologue
    .line 80
    new-array v0, p1, [Lcom/htc/peopleyouknow/ContactData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/htc/peopleyouknow/ContactData$1;->newArray(I)[Lcom/htc/peopleyouknow/ContactData;

    move-result-object v0

    return-object v0
.end method
