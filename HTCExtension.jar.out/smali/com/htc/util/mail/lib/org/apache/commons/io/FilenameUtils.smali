.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final OTHER_SEPARATOR:C = '\u0000'

#the value of this static final field might be set in the static constructor
.field private static final SYSTEM_SEPARATOR:C = '\u0000'

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 128
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 135
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/16 v0, 0x2f

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/16 v0, 0x5c

    sput-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "basePath"
    .parameter "fullFilenameToAdd"

    .prologue
    const/4 v3, 0x0

    .line 414
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 415
    .local v2, prefix:I
    if-gez v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v3

    .line 418
    :cond_1
    if-lez v2, :cond_2

    .line 419
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 421
    :cond_2
    if-eqz p0, :cond_0

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 425
    .local v1, len:I
    if-nez v1, :cond_3

    .line 426
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 428
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 429
    .local v0, ch:C
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 432
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "filename"
    .parameter "includeSeparator"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 839
    if-nez p0, :cond_1

    move-object p0, v3

    .line 858
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 842
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 843
    .local v2, prefix:I
    if-gez v2, :cond_2

    move-object p0, v3

    .line 844
    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 847
    if-eqz p1, :cond_0

    .line 848
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 853
    :cond_3
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 854
    .local v1, index:I
    if-gez v1, :cond_4

    .line 855
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 857
    :cond_4
    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :goto_1
    add-int v0, v1, v3

    .line 858
    .local v0, end:I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #end:I
    :cond_5
    move v3, v4

    .line 857
    goto :goto_1
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .parameter "separatorAdd"

    .prologue
    const/4 v2, 0x0

    .line 750
    if-nez p0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-object v2

    .line 753
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 754
    .local v1, prefix:I
    if-ltz v1, :cond_0

    .line 757
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 758
    .local v0, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-gez v0, :cond_3

    .line 759
    :cond_2
    const-string v2, ""

    goto :goto_0

    .line 761
    :cond_3
    add-int v2, v0, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static doNormalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .parameter "filename"
    .parameter "keepSeparator"

    .prologue
    const/4 v7, 0x0

    const/16 v12, 0x2e

    const/4 v11, 0x0

    .line 277
    if-nez p0, :cond_1

    move-object p0, v7

    .line 365
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 280
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 281
    .local v5, size:I
    if-eqz v5, :cond_0

    .line 284
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    .line 285
    .local v4, prefix:I
    if-gez v4, :cond_2

    move-object p0, v7

    .line 286
    goto :goto_0

    .line 289
    :cond_2
    add-int/lit8 v8, v5, 0x2

    new-array v0, v8, [C

    .line 290
    .local v0, array:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v11, v8, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 293
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_4

    .line 294
    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    if-ne v8, v9, :cond_3

    .line 295
    sget-char v8, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v8, v0, v1

    .line 293
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 300
    :cond_4
    const/4 v3, 0x1

    .line 301
    .local v3, lastIsDirectory:Z
    add-int/lit8 v8, v5, -0x1

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-eq v8, v9, :cond_5

    .line 302
    add-int/lit8 v6, v5, 0x1

    .end local v5           #size:I
    .local v6, size:I
    sget-char v8, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    aput-char v8, v0, v5

    .line 303
    const/4 v3, 0x0

    move v5, v6

    .line 307
    .end local v6           #size:I
    .restart local v5       #size:I
    :cond_5
    add-int/lit8 v1, v4, 0x1

    :goto_2
    if-ge v1, v5, :cond_7

    .line 308
    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_6

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_6

    .line 309
    add-int/lit8 v8, v1, -0x1

    sub-int v9, v5, v1

    invoke-static {v0, v1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    add-int/lit8 v5, v5, -0x1

    .line 311
    add-int/lit8 v1, v1, -0x1

    .line 307
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    :cond_7
    add-int/lit8 v1, v4, 0x1

    :goto_3
    if-ge v1, v5, :cond_b

    .line 317
    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_a

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_a

    add-int/lit8 v8, v4, 0x1

    if-eq v1, v8, :cond_8

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_a

    .line 319
    :cond_8
    add-int/lit8 v8, v5, -0x1

    if-ne v1, v8, :cond_9

    .line 320
    const/4 v3, 0x1

    .line 322
    :cond_9
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v1, -0x1

    sub-int v10, v5, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    add-int/lit8 v5, v5, -0x2

    .line 324
    add-int/lit8 v1, v1, -0x1

    .line 316
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 330
    :cond_b
    add-int/lit8 v1, v4, 0x2

    :goto_4
    if-ge v1, v5, :cond_12

    .line 331
    aget-char v8, v0, v1

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_f

    add-int/lit8 v8, v1, -0x1

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_f

    add-int/lit8 v8, v1, -0x2

    aget-char v8, v0, v8

    if-ne v8, v12, :cond_f

    add-int/lit8 v8, v4, 0x2

    if-eq v1, v8, :cond_c

    add-int/lit8 v8, v1, -0x3

    aget-char v8, v0, v8

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_f

    .line 333
    :cond_c
    add-int/lit8 v8, v4, 0x2

    if-ne v1, v8, :cond_d

    move-object p0, v7

    .line 334
    goto/16 :goto_0

    .line 336
    :cond_d
    add-int/lit8 v8, v5, -0x1

    if-ne v1, v8, :cond_e

    .line 337
    const/4 v3, 0x1

    .line 340
    :cond_e
    add-int/lit8 v2, v1, -0x4

    .local v2, j:I
    :goto_5
    if-lt v2, v4, :cond_11

    .line 341
    aget-char v8, v0, v2

    sget-char v9, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v8, v9, :cond_10

    .line 343
    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v9, v2, 0x1

    sub-int v10, v5, v1

    invoke-static {v0, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    sub-int v8, v1, v2

    sub-int/2addr v5, v8

    .line 345
    add-int/lit8 v1, v2, 0x1

    .line 330
    .end local v2           #j:I
    :cond_f
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 340
    .restart local v2       #j:I
    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 350
    :cond_11
    add-int/lit8 v8, v1, 0x1

    sub-int v9, v5, v1

    invoke-static {v0, v8, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v8, v4

    sub-int/2addr v5, v8

    .line 352
    add-int/lit8 v1, v4, 0x1

    goto :goto_6

    .line 356
    .end local v2           #j:I
    :cond_12
    if-gtz v5, :cond_13

    .line 357
    const-string p0, ""

    goto/16 :goto_0

    .line 359
    :cond_13
    if-gt v5, v4, :cond_14

    .line 360
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0, v11, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 362
    .restart local p0
    :cond_14
    if-eqz v3, :cond_15

    if-eqz p1, :cond_15

    .line 363
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0, v11, v5}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 365
    .restart local p0
    :cond_15
    new-instance p0, Ljava/lang/String;

    .end local p0
    add-int/lit8 v7, v5, -0x1

    invoke-direct {p0, v0, v11, v7}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "filename1"
    .parameter "filename2"

    .prologue
    .line 999
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z
    .locals 2
    .parameter "filename1"
    .parameter "filename2"
    .parameter "normalized"
    .parameter "caseSensitivity"

    .prologue
    .line 1081
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1082
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 1095
    :goto_0
    return v0

    .line 1082
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1084
    :cond_2
    if-eqz p2, :cond_4

    .line 1085
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1086
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1087
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 1088
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_4
    if-nez p3, :cond_5

    .line 1093
    sget-object p3, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 1095
    :cond_5
    invoke-virtual {p3, p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "filename1"
    .parameter "filename2"

    .prologue
    .line 1038
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "filename1"
    .parameter "filename2"

    .prologue
    .line 1059
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "filename1"
    .parameter "filename2"

    .prologue
    .line 1018
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 912
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 937
    if-nez p0, :cond_0

    .line 938
    const/4 v1, 0x0

    .line 944
    :goto_0
    return-object v1

    .line 940
    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 941
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 942
    const-string v1, ""

    goto :goto_0

    .line 944
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 794
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 883
    if-nez p0, :cond_0

    .line 884
    const/4 v1, 0x0

    .line 887
    :goto_0
    return-object v1

    .line 886
    :cond_0
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 887
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 708
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 668
    if-nez p0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-object v1

    .line 671
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    .line 672
    .local v0, len:I
    if-ltz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 678
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .locals 11
    .parameter "filename"

    .prologue
    const/16 v10, 0x2f

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 529
    if-nez p0, :cond_1

    move v5, v7

    .line 577
    :cond_0
    :goto_0
    return v5

    .line 532
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 533
    .local v2, len:I
    if-nez v2, :cond_2

    move v5, v6

    .line 534
    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 537
    .local v0, ch0:C
    const/16 v9, 0x3a

    if-ne v0, v9, :cond_3

    move v5, v7

    .line 538
    goto :goto_0

    .line 540
    :cond_3
    if-ne v2, v5, :cond_5

    .line 541
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_4

    move v5, v8

    .line 542
    goto :goto_0

    .line 544
    :cond_4
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 546
    :cond_5
    const/16 v9, 0x7e

    if-ne v0, v9, :cond_9

    .line 547
    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 548
    .local v3, posUnix:I
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 549
    .local v4, posWin:I
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    .line 550
    add-int/lit8 v5, v2, 0x1

    goto :goto_0

    .line 552
    :cond_6
    if-ne v3, v7, :cond_7

    move v3, v4

    .line 553
    :cond_7
    if-ne v4, v7, :cond_8

    move v4, v3

    .line 554
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 556
    .end local v3           #posUnix:I
    .end local v4           #posWin:I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 557
    .local v1, ch1:C
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_d

    .line 558
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 559
    const/16 v5, 0x41

    if-lt v0, v5, :cond_c

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_c

    .line 560
    if-eq v2, v8, :cond_a

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v5, v8

    .line 561
    goto :goto_0

    .line 563
    :cond_b
    const/4 v5, 0x3

    goto :goto_0

    :cond_c
    move v5, v7

    .line 565
    goto :goto_0

    .line 567
    :cond_d
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 568
    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 569
    .restart local v3       #posUnix:I
    const/16 v5, 0x5c

    invoke-virtual {p0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 570
    .restart local v4       #posWin:I
    if-ne v3, v7, :cond_e

    if-eq v4, v7, :cond_f

    :cond_e
    if-eq v3, v8, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    move v5, v7

    .line 571
    goto/16 :goto_0

    .line 573
    :cond_10
    if-ne v3, v7, :cond_11

    move v3, v4

    .line 574
    :cond_11
    if-ne v4, v7, :cond_12

    move v4, v3

    .line 575
    :cond_12
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v3           #posUnix:I
    .end local v4           #posWin:I
    :cond_13
    invoke-static {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 4
    .parameter "filename"

    .prologue
    const/4 v2, -0x1

    .line 625
    if-nez p0, :cond_0

    .line 630
    :goto_0
    return v2

    .line 628
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 629
    .local v0, extensionPos:I
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    .line 630
    .local v1, lastSeparator:I
    if-le v1, v0, :cond_1

    move v0, v2

    .end local v0           #extensionPos:I
    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 3
    .parameter "filename"

    .prologue
    .line 599
    if-nez p0, :cond_0

    .line 600
    const/4 v2, -0x1

    .line 604
    :goto_0
    return v2

    .line 602
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 603
    .local v0, lastUnixPos:I
    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 604
    .local v1, lastWindowsPos:I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"
    .parameter "extension"

    .prologue
    const/4 v1, 0x0

    .line 1115
    if-nez p0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v1

    .line 1118
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1119
    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1121
    :cond_3
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, fileExt:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 6
    .parameter "filename"
    .parameter "extensions"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1164
    if-nez p0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return v3

    .line 1167
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1168
    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 1170
    :cond_4
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, fileExt:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    .line 1173
    goto :goto_0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .parameter "filename"
    .parameter "extensions"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1137
    if-nez p0, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return v3

    .line 1140
    :cond_1
    if-eqz p1, :cond_2

    array-length v4, p1

    if-nez v4, :cond_4

    .line 1141
    :cond_2
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    .line 1143
    :cond_4
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, fileExt:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 1145
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v2

    .line 1146
    goto :goto_0

    .line 1144
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static isSeparator(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 167
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSystemWindows()Z
    .locals 2

    .prologue
    .line 156
    sget-char v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 971
    if-nez p0, :cond_1

    .line 972
    const/4 p0, 0x0

    .line 978
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 974
    .end local v0           #index:I
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 975
    .restart local v0       #index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 978
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 482
    if-nez p0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 488
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-static {}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/16 v2, 0x5c

    .line 448
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 451
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/16 v2, 0x2f

    .line 465
    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 468
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1346
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1347
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v6

    .line 1373
    :goto_0
    return-object v4

    .line 1350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1351
    .local v0, array:[C
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v3, list:Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1353
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1354
    aget-char v4, v0, v2

    if-eq v4, v7, :cond_1

    aget-char v4, v0, v2

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    .line 1355
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1356
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1359
    :cond_2
    aget-char v4, v0, v2

    if-ne v4, v7, :cond_4

    .line 1360
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1361
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1363
    :cond_5
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1366
    :cond_6
    aget-char v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1369
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1370
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"
    .parameter "wildcardMatcher"

    .prologue
    .line 1206
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z
    .locals 11
    .parameter "filename"
    .parameter "wildcardMatcher"
    .parameter "caseSensitivity"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1256
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v7, v8

    .line 1333
    :goto_0
    return v7

    .line 1259
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v7, v9

    .line 1260
    goto :goto_0

    .line 1262
    :cond_2
    if-nez p2, :cond_3

    .line 1263
    sget-object p2, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SENSITIVE:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    .line 1265
    :cond_3
    invoke-virtual {p2, p0}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1266
    invoke-virtual {p2, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->convertCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1267
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1268
    .local v5, wcs:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1269
    .local v0, anyChars:Z
    const/4 v4, 0x0

    .line 1270
    .local v4, textIdx:I
    const/4 v6, 0x0

    .line 1271
    .local v6, wcsIdx:I
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 1275
    .local v2, backtrack:Ljava/util/Stack;
    :cond_4
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1276
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    move-object v1, v7

    check-cast v1, [I

    .line 1277
    .local v1, array:[I
    aget v6, v1, v9

    .line 1278
    aget v4, v1, v8

    .line 1279
    const/4 v0, 0x1

    .line 1283
    .end local v1           #array:[I
    :cond_5
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_9

    .line 1285
    aget-object v7, v5, v6

    const-string v10, "?"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1287
    add-int/lit8 v4, v4, 0x1

    .line 1288
    const/4 v0, 0x0

    .line 1323
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1290
    :cond_7
    aget-object v7, v5, v6

    const-string v10, "*"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1292
    const/4 v0, 0x1

    .line 1293
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_6

    .line 1294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    .line 1299
    :cond_8
    if-eqz v0, :cond_c

    .line 1301
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1302
    const/4 v7, -0x1

    if-ne v4, v7, :cond_a

    .line 1327
    :cond_9
    :goto_3
    array-length v7, v5

    if-ne v6, v7, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_d

    move v7, v8

    .line 1328
    goto :goto_0

    .line 1306
    :cond_a
    aget-object v7, v5, v6

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1307
    .local v3, repeat:I
    if-ltz v3, :cond_b

    .line 1308
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v6, v7, v9

    aput v3, v7, v8

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    .end local v3           #repeat:I
    :cond_b
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v4, v7

    .line 1320
    const/4 v0, 0x0

    goto :goto_2

    .line 1312
    :cond_c
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_3

    .line 1331
    :cond_d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v9

    .line 1333
    goto/16 :goto_0
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"
    .parameter "wildcardMatcher"

    .prologue
    .line 1235
    sget-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;->SYSTEM:Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
