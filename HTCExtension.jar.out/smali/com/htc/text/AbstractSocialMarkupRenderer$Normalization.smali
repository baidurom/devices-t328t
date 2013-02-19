.class Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;
.super Ljava/lang/Object;
.source "AbstractSocialMarkupRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/text/AbstractSocialMarkupRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Normalization"
.end annotation


# static fields
.field static UTF82ASCII:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x4f

    const/16 v5, 0x59

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 744
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->UTF82ASCII:Ljava/util/TreeMap;

    .line 746
    const/16 v0, 0x41

    const/16 v1, 0xc0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 747
    const/16 v0, 0x43

    const/16 v1, 0xc7

    invoke-static {v0, v1, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 748
    const/16 v0, 0x45

    const/16 v1, 0xc8

    invoke-static {v0, v1, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 749
    const/16 v0, 0x49

    const/16 v1, 0xcc

    invoke-static {v0, v1, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 750
    const/16 v0, 0x4e

    const/16 v1, 0xd1

    invoke-static {v0, v1, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 751
    const/16 v0, 0xd2

    const/4 v1, 0x5

    invoke-static {v6, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 752
    const/16 v0, 0x150

    invoke-static {v6, v0, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 753
    const/16 v0, 0xd9

    invoke-static {v7, v0, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 754
    const/16 v0, 0x170

    invoke-static {v7, v0, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 755
    const/16 v0, 0xdd

    invoke-static {v5, v0, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 756
    const/16 v0, 0x176

    invoke-static {v5, v0, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 757
    const/16 v0, 0x178

    invoke-static {v5, v0, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->addEntry(CSB)V

    .line 758
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addEntry(CSB)V
    .locals 4
    .parameter "value"
    .parameter "base"
    .parameter "max"

    .prologue
    .line 761
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    if-ge v0, p2, :cond_0

    .line 762
    sget-object v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->UTF82ASCII:Ljava/util/TreeMap;

    add-int v2, p1, v0

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "txt"

    .prologue
    .line 767
    if-nez p0, :cond_0

    .line 768
    const/4 v6, 0x0

    .line 781
    :goto_0
    return-object v6

    .line 771
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, tmp:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 775
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 776
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 777
    .local v0, c:C
    sget-object v6, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->UTF82ASCII:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 778
    .local v1, character:Ljava/lang/Character;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 779
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 781
    .end local v0           #c:C
    .end local v1           #character:Ljava/lang/Character;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
