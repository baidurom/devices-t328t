.class public Lcom/htc/clientprofileservice/Sncdata;
.super Ljava/lang/Object;
.source "Sncdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/Sncdata;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_ICON:Ljava/lang/String; = "icon"

.field private static final TAG_ICONFORMAT:Ljava/lang/String; = "icon_format"

.field private static final TAG_ICONSIZE:Ljava/lang/String; = "icon_size"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_SNC:Ljava/lang/String; = "SNC"

.field private static final TAG_SNCDATA:Ljava/lang/String; = "SNCdata"

.field private static final TAG_URL:Ljava/lang/String; = "url"

.field private static final mShowCount:I = 0x2


# instance fields
.field snc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/SncdataEntry;",
            ">;"
        }
    .end annotation
.end field

.field version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/htc/clientprofileservice/Sncdata$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/Sncdata$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/Sncdata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .parameter "version"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Sncdata;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-wide v0, p1, Lcom/htc/clientprofileservice/Sncdata;->version:D

    iput-wide v0, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public addSnc(Lcom/htc/clientprofileservice/SncdataEntry;)V
    .locals 1
    .parameter "snc"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getSnc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/SncdataEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .parameter "in"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    .line 127
    const-class v5, Lcom/htc/clientprofileservice/SncdataEntry;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 128
    .local v1, entries:[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 129
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 130
    .local v2, entry:Ljava/lang/Object;
    iget-object v5, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    check-cast v2, Lcom/htc/clientprofileservice/SncdataEntry;

    .end local v2           #entry:Ljava/lang/Object;
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 65
    const-string v3, "SNCdata"

    .line 67
    .local v3, string:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (version: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "SNC ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 74
    .local v0, count:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "):\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    if-le v0, v5, :cond_0

    move v2, v5

    .line 77
    .local v2, numToShow:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/clientprofileservice/SncdataEntry;

    invoke-virtual {v4}, Lcom/htc/clientprofileservice/SncdataEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #numToShow:I
    :cond_0
    move v2, v0

    .line 76
    goto :goto_0

    .line 80
    .restart local v1       #i:I
    .restart local v2       #numToShow:I
    :cond_1
    if-le v0, v5, :cond_2

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    :cond_2
    return-object v3
.end method

.method public toXmlInStream()Ljava/io/ByteArrayOutputStream;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 154
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 156
    const/4 v6, 0x0

    const-string v7, "SNCdata"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v6, 0x0

    const-string v7, "version"

    iget-wide v8, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/clientprofileservice/SncdataEntry;

    .line 160
    .local v1, entry:Lcom/htc/clientprofileservice/SncdataEntry;
    const/4 v6, 0x0

    const-string v7, "SNC"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const/4 v6, 0x0

    const-string v7, "id"

    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const/4 v6, 0x0

    const-string v7, "url"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const/4 v6, 0x0

    const-string v7, "url"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    const/4 v6, 0x0

    const-string v7, "icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getIconSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const/4 v6, 0x0

    const-string v7, "icon_size"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    const/4 v6, 0x0

    const-string v7, "icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getIconFormat()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const/4 v6, 0x0

    const-string v7, "icon_format"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const/4 v6, 0x0

    const-string v7, "icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    invoke-virtual {v1}, Lcom/htc/clientprofileservice/SncdataEntry;->getIconEncoded()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const/4 v6, 0x0

    const-string v7, "icon"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const/4 v6, 0x0

    const-string v7, "SNC"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v1           #entry:Lcom/htc/clientprofileservice/SncdataEntry;
    :cond_0
    const/4 v6, 0x0

    const-string v7, "SNCdata"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 197
    .end local v2           #i:I
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-object v3

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_2
    move-object v3, v5

    .line 197
    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 193
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 194
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/htc/clientprofileservice/Sncdata;->version:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 116
    iget-object v0, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/clientprofileservice/Sncdata;->snc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/clientprofileservice/SncdataEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 117
    return-void
.end method
