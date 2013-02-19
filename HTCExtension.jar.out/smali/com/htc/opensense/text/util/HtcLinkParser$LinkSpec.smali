.class public final Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;
.super Ljava/lang/Object;
.source "HtcLinkParser.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/text/util/HtcLinkParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinkSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public end:I

.field public start:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec$1;

    invoke-direct {v0}, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, isUrlNull:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    .line 202
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->end:I

    .line 204
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    iget v1, p1, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->compareTo(Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 144
    iput p1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->end:I

    .line 145
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 140
    iput p1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    .line 141
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    :goto_0
    iget v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
