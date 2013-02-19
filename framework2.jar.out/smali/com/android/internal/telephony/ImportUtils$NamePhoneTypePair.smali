.class Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "ImportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "nameWithPhoneType"

    .prologue
    const/4 v4, 0x2

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    .local v1, nameLen:I
    add-int/lit8 v2, v1, -0x2

    if-ltz v2, :cond_4

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    .line 118
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 119
    .local v0, c:C
    const/16 v2, 0x57

    if-ne v0, v2, :cond_0

    .line 120
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    .line 128
    :goto_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 133
    .end local v0           #c:C
    :goto_1
    return-void

    .line 121
    .restart local v0       #c:C
    :cond_0
    const/16 v2, 0x4d

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_2

    .line 122
    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 123
    :cond_2
    const/16 v2, 0x48

    if-ne v0, v2, :cond_3

    .line 124
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 126
    :cond_3
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 130
    .end local v0           #c:C
    :cond_4
    iput v4, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->phoneType:I

    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/ImportUtils$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
