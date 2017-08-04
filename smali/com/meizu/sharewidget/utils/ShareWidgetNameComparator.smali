.class public Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;
.super Ljava/lang/Object;
.source "ShareWidgetNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mIsChineseLang:Z

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mPM:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "zh"

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mIsChineseLang:Z

    .line 25
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mCollator:Ljava/text/Collator;

    .line 26
    iget-object v0, p0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 1
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public final compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 24
    .param p1, "a"    # Landroid/content/pm/ResolveInfo;
    .param p2, "b"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 44
    .local v17, "sa":Ljava/lang/CharSequence;
    if-eqz v17, :cond_2

    .line 45
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 46
    .local v18, "sb":Ljava/lang/CharSequence;
    if-eqz v18, :cond_3

    .line 47
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 48
    .local v19, "str1":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 49
    .local v20, "str2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .line 50
    .local v9, "len1":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v10

    .line 52
    .local v10, "len2":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mIsChineseLang:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    :cond_0
    const/4 v7, 0x0

    .local v7, "index1":I
    const/4 v8, 0x0

    .local v8, "index2":I
    const/4 v4, 0x0

    .local v4, "count1":I
    const/4 v5, 0x0

    .line 78
    .local v5, "count2":I
    :goto_2
    if-lt v7, v9, :cond_a

    .line 187
    :cond_1
    sub-int v21, v9, v10

    return v21

    .line 44
    .end local v4    # "count1":I
    .end local v5    # "count2":I
    .end local v7    # "index1":I
    .end local v8    # "index2":I
    .end local v9    # "len1":I
    .end local v10    # "len2":I
    .end local v18    # "sb":Ljava/lang/CharSequence;
    .end local v19    # "str1":Ljava/lang/String;
    .end local v20    # "str2":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    .line 46
    .restart local v18    # "sb":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_1

    .line 54
    .restart local v9    # "len1":I
    .restart local v10    # "len2":I
    .restart local v19    # "str1":Ljava/lang/String;
    .restart local v20    # "str2":Ljava/lang/String;
    :cond_4
    if-lez v9, :cond_0

    if-lez v10, :cond_0

    const/4 v6, 0x0

    .line 56
    .local v6, "index":I
    :goto_3
    if-ge v6, v9, :cond_0

    .line 58
    if-ge v6, v10, :cond_5

    .line 62
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v2, v0

    .line 63
    .local v2, "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v3, v0

    .line 64
    .local v3, "ch2":C
    if-ne v2, v3, :cond_6

    .line 56
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    :cond_5
    const/16 v21, 0x1

    .line 60
    return v21

    .restart local v2    # "ch1":C
    .restart local v3    # "ch2":C
    :cond_6
    const/16 v21, 0x80

    .line 67
    move/from16 v0, v21

    if-ge v2, v0, :cond_8

    :cond_7
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_0

    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_0

    :goto_4
    const/16 v21, 0x80

    .line 69
    move/from16 v0, v21

    if-lt v2, v0, :cond_9

    const/16 v21, 0x1

    :goto_5
    return v21

    :cond_8
    const/16 v21, 0x80

    .line 67
    move/from16 v0, v21

    if-ge v3, v0, :cond_7

    goto :goto_4

    :cond_9
    const/16 v21, -0x1

    .line 69
    goto :goto_5

    .line 78
    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    .end local v6    # "index":I
    .restart local v4    # "count1":I
    .restart local v5    # "count2":I
    .restart local v7    # "index1":I
    .restart local v8    # "index2":I
    :cond_a
    if-ge v8, v10, :cond_1

    .line 79
    move v11, v7

    .line 80
    .local v11, "num1":I
    move v13, v8

    .line 81
    .local v13, "num2":I
    :goto_6
    if-lt v7, v9, :cond_f

    .line 89
    :cond_b
    :goto_7
    if-lt v8, v10, :cond_10

    .line 97
    :cond_c
    sub-int v15, v7, v11

    .line 98
    .local v15, "numlen1":I
    sub-int v16, v8, v13

    .line 100
    .local v16, "numlen2":I
    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 139
    if-gtz v15, :cond_1d

    .line 152
    :cond_d
    if-lt v7, v9, :cond_1e

    .line 153
    :cond_e
    sub-int v21, v9, v10

    return v21

    .line 82
    .end local v15    # "numlen1":I
    .end local v16    # "numlen2":I
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v2, v0

    .restart local v2    # "ch1":C
    const/16 v21, 0x30

    .line 83
    move/from16 v0, v21

    if-lt v2, v0, :cond_b

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v2, v0, :cond_b

    .line 86
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 90
    .end local v2    # "ch1":C
    :cond_10
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v3, v0

    .restart local v3    # "ch2":C
    const/16 v21, 0x30

    .line 91
    move/from16 v0, v21

    if-lt v3, v0, :cond_c

    const/16 v21, 0x39

    move/from16 v0, v21

    if-gt v3, v0, :cond_c

    .line 94
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 101
    .end local v3    # "ch2":C
    .restart local v15    # "numlen1":I
    .restart local v16    # "numlen2":I
    :cond_11
    if-gtz v15, :cond_13

    .line 135
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    return v21

    .line 101
    :cond_13
    if-lez v16, :cond_12

    .line 102
    move v12, v11

    .local v12, "num11":I
    move v14, v13

    .line 103
    .local v14, "num22":I
    :goto_8
    if-lt v12, v7, :cond_17

    .line 110
    :cond_14
    :goto_9
    if-lt v14, v8, :cond_18

    .line 117
    :cond_15
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 121
    :goto_a
    if-lt v12, v7, :cond_1a

    .line 132
    :cond_16
    sub-int v21, v16, v15

    return v21

    .line 104
    :cond_17
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 105
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 111
    :cond_18
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 112
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 118
    :cond_19
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    sub-int v21, v21, v22

    return v21

    .line 121
    :cond_1a
    if-ge v14, v8, :cond_16

    .line 122
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v2, v0

    .line 123
    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v3, v0

    .line 124
    .restart local v3    # "ch2":C
    if-eq v2, v3, :cond_1b

    .line 129
    sub-int v21, v2, v3

    return v21

    .line 125
    :cond_1b
    add-int/lit8 v12, v12, 0x1

    .line 126
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 145
    .end local v12    # "num11":I
    .end local v14    # "num22":I
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    .line 141
    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    :cond_1d
    if-ge v11, v7, :cond_d

    .line 142
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v2, v0

    .line 143
    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v3, v0

    .line 144
    .restart local v3    # "ch2":C
    if-eq v2, v3, :cond_1c

    .line 148
    sub-int v21, v2, v3

    return v21

    .line 152
    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    :cond_1e
    if-ge v8, v10, :cond_e

    .line 156
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v2, v0

    .line 157
    .restart local v2    # "ch1":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    int-to-char v3, v0

    .restart local v3    # "ch2":C
    const/16 v21, 0x61

    .line 158
    move/from16 v0, v21

    if-le v2, v0, :cond_22

    :cond_1f
    const/16 v21, 0x41

    .line 167
    move/from16 v0, v21

    if-le v2, v0, :cond_25

    .line 176
    :cond_20
    if-ne v2, v3, :cond_28

    .line 183
    :cond_21
    add-int/lit8 v7, v7, 0x1

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_22
    const/16 v21, 0x7a

    .line 158
    move/from16 v0, v21

    if-lt v2, v0, :cond_1f

    const/16 v21, 0x41

    .line 159
    move/from16 v0, v21

    if-le v3, v0, :cond_24

    .line 163
    :cond_23
    :goto_b
    if-eq v2, v3, :cond_21

    .line 164
    sub-int v21, v2, v3

    return v21

    :cond_24
    const/16 v21, 0x5a

    .line 159
    move/from16 v0, v21

    if-lt v3, v0, :cond_23

    .line 160
    add-int/lit8 v21, v3, 0x20

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v3, v0

    goto :goto_b

    :cond_25
    const/16 v21, 0x5a

    .line 167
    move/from16 v0, v21

    if-lt v2, v0, :cond_20

    const/16 v21, 0x61

    .line 168
    move/from16 v0, v21

    if-le v3, v0, :cond_27

    .line 172
    :cond_26
    :goto_c
    if-eq v2, v3, :cond_21

    .line 173
    sub-int v21, v2, v3

    return v21

    :cond_27
    const/16 v21, 0x7a

    .line 168
    move/from16 v0, v21

    if-lt v3, v0, :cond_26

    .line 169
    add-int/lit8 v21, v3, -0x20

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v3, v0

    goto :goto_c

    .line 177
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/sharewidget/utils/ShareWidgetNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    return v21
.end method

.method public resortResolveInfos(Ljava/util/List;)Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1

    const-string/jumbo v6, "com.android.email"

    .local v6, "EMAIL":Ljava/lang/String;
    const-string/jumbo v8, "com.android.mms"

    .local v8, "MMS":Ljava/lang/String;
    const-string/jumbo v5, "com.android.bluetooth"

    .local v5, "BT_OPP":Ljava/lang/String;
    const-string/jumbo v4, "com.meizu.share"

    .local v4, "BT":Ljava/lang/String;
    const-string/jumbo v10, "com.meizu.notepaper"

    .local v10, "NOTEPAPER":Ljava/lang/String;
    const-string/jumbo v7, "com.meizu.media.gallery"

    .local v7, "GALLERY":Ljava/lang/String;
    const-string/jumbo v9, "com.meizu.media.music"

    .local v9, "MUSIC":Ljava/lang/String;
    const-string/jumbo v12, "com.meizu.media.video"

    .local v12, "VIDEO":Ljava/lang/String;
    const-string/jumbo v3, "com.android.browser"

    .local v3, "BROWSER":Ljava/lang/String;
    const-string/jumbo v13, "com.tencent.mm"

    .local v13, "WECHAT":Ljava/lang/String;
    const-string/jumbo v14, "com.sina.weibo"

    .local v14, "WEIBO":Ljava/lang/String;
    const-string/jumbo v11, "com.tencent.mobileqq"

    .local v11, "QQ":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "email":Landroid/content/pm/ResolveInfo;
    const/16 v22, 0x0

    .local v22, "mms":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x0

    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    const/16 v17, 0x0

    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    const/16 v24, 0x0

    .local v24, "notepaper":Landroid/content/pm/ResolveInfo;
    const/16 v20, 0x0

    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    const/16 v23, 0x0

    .local v23, "music":Landroid/content/pm/ResolveInfo;
    const/16 v29, 0x0

    .local v29, "video":Landroid/content/pm/ResolveInfo;
    const/4 v15, 0x0

    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    const/16 v31, 0x0

    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    const/16 v30, 0x0

    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    const/16 v32, 0x0

    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    const/16 v27, 0x0

    .local v27, "qqFriends":Landroid/content/pm/ResolveInfo;
    const/16 v26, 0x0

    .line 226
    .local v26, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    .end local v22    # "mms":Landroid/content/pm/ResolveInfo;
    .end local v23    # "music":Landroid/content/pm/ResolveInfo;
    .end local v24    # "notepaper":Landroid/content/pm/ResolveInfo;
    .end local v26    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    .end local v27    # "qqFriends":Landroid/content/pm/ResolveInfo;
    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    .local v21, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_2

    .line 270
    if-nez v23, :cond_17

    .line 275
    :goto_1
    if-nez v29, :cond_18

    .line 280
    :goto_2
    if-nez v20, :cond_19

    .line 285
    :goto_3
    if-nez v15, :cond_1a

    .line 290
    :goto_4
    if-nez v22, :cond_1b

    .line 295
    :goto_5
    if-nez v24, :cond_1c

    .line 300
    :goto_6
    if-nez v17, :cond_1d

    .line 305
    :goto_7
    if-nez v16, :cond_1e

    .line 310
    :goto_8
    if-nez v19, :cond_1f

    .line 315
    :goto_9
    if-nez v32, :cond_20

    .line 320
    :goto_a
    if-nez v26, :cond_21

    .line 325
    :goto_b
    if-nez v27, :cond_22

    .line 330
    :goto_c
    if-nez v31, :cond_23

    .line 335
    :goto_d
    if-nez v30, :cond_24

    .line 340
    :goto_e
    return-object p1

    .end local v3    # "BROWSER":Ljava/lang/String;
    .end local v4    # "BT":Ljava/lang/String;
    .end local v5    # "BT_OPP":Ljava/lang/String;
    .end local v6    # "EMAIL":Ljava/lang/String;
    .end local v7    # "GALLERY":Ljava/lang/String;
    .end local v8    # "MMS":Ljava/lang/String;
    .end local v9    # "MUSIC":Ljava/lang/String;
    .end local v10    # "NOTEPAPER":Ljava/lang/String;
    .end local v11    # "QQ":Ljava/lang/String;
    .end local v12    # "VIDEO":Ljava/lang/String;
    .end local v13    # "WECHAT":Ljava/lang/String;
    .end local v14    # "WEIBO":Ljava/lang/String;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v33, 0x0

    .line 192
    return-object v33

    .line 226
    .restart local v3    # "BROWSER":Ljava/lang/String;
    .restart local v4    # "BT":Ljava/lang/String;
    .restart local v5    # "BT_OPP":Ljava/lang/String;
    .restart local v6    # "EMAIL":Ljava/lang/String;
    .restart local v7    # "GALLERY":Ljava/lang/String;
    .restart local v8    # "MMS":Ljava/lang/String;
    .restart local v9    # "MUSIC":Ljava/lang/String;
    .restart local v10    # "NOTEPAPER":Ljava/lang/String;
    .restart local v11    # "QQ":Ljava/lang/String;
    .restart local v12    # "VIDEO":Ljava/lang/String;
    .restart local v13    # "WECHAT":Ljava/lang/String;
    .restart local v14    # "WEIBO":Ljava/lang/String;
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/ResolveInfo;

    .line 227
    .local v28, "resolve":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    if-nez v33, :cond_9

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 229
    .local v18, "ci":Landroid/content/pm/ComponentInfo;
    :goto_f
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .local v25, "pkg":Ljava/lang/String;
    const-string/jumbo v33, "com.android.email"

    .line 230
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    const-string/jumbo v33, "com.android.mms"

    .line 232
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_b

    :cond_3
    const-string/jumbo v33, "com.android.bluetooth"

    .line 234
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_c

    :cond_4
    const-string/jumbo v33, "com.meizu.share"

    .line 237
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_d

    :cond_5
    const-string/jumbo v33, "com.meizu.notepaper"

    .line 247
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_e

    const-string/jumbo v33, "com.meizu.media.music"

    .line 249
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_f

    const-string/jumbo v33, "com.meizu.media.video"

    .line 251
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_10

    const-string/jumbo v33, "com.meizu.media.gallery"

    .line 253
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_11

    const-string/jumbo v33, "com.android.browser"

    .line 255
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_12

    const-string/jumbo v33, "com.tencent.mm"

    .line 257
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_13

    :cond_6
    const-string/jumbo v33, "com.tencent.mm"

    .line 259
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_14

    :cond_7
    const-string/jumbo v33, "com.sina.weibo"

    .line 261
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_15

    const-string/jumbo v33, "com.tencent.mobileqq"

    .line 263
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_16

    :cond_8
    const-string/jumbo v33, "com.tencent.mobileqq"

    .line 265
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 266
    move-object/from16 v26, v28

    .local v26, "qqFileToPc":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 227
    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v25    # "pkg":Ljava/lang/String;
    .end local v26    # "qqFileToPc":Landroid/content/pm/ResolveInfo;
    :cond_9
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    goto/16 :goto_f

    .line 231
    .restart local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v25    # "pkg":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v28

    .local v19, "email":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 232
    .end local v19    # "email":Landroid/content/pm/ResolveInfo;
    :cond_b
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 233
    move-object/from16 v22, v28

    .local v22, "mms":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 234
    .end local v22    # "mms":Landroid/content/pm/ResolveInfo;
    :cond_c
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 236
    move-object/from16 v17, v28

    .local v17, "bt_opp":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 237
    .end local v17    # "bt_opp":Landroid/content/pm/ResolveInfo;
    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.meizu.share.BluetoothOppLauncherActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 240
    move-object/from16 v16, v28

    .local v16, "bt":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 248
    .end local v16    # "bt":Landroid/content/pm/ResolveInfo;
    :cond_e
    move-object/from16 v24, v28

    .local v24, "notepaper":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 250
    .end local v24    # "notepaper":Landroid/content/pm/ResolveInfo;
    :cond_f
    move-object/from16 v23, v28

    .local v23, "music":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 252
    .end local v23    # "music":Landroid/content/pm/ResolveInfo;
    :cond_10
    move-object/from16 v29, v28

    .local v29, "video":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 254
    .end local v29    # "video":Landroid/content/pm/ResolveInfo;
    :cond_11
    move-object/from16 v20, v28

    .local v20, "gallery":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 256
    .end local v20    # "gallery":Landroid/content/pm/ResolveInfo;
    :cond_12
    move-object/from16 v15, v28

    .local v15, "browser":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 257
    .end local v15    # "browser":Landroid/content/pm/ResolveInfo;
    :cond_13
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 258
    move-object/from16 v31, v28

    .local v31, "weChatMoments":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 259
    .end local v31    # "weChatMoments":Landroid/content/pm/ResolveInfo;
    :cond_14
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 260
    move-object/from16 v30, v28

    .local v30, "weChatFriend":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 262
    .end local v30    # "weChatFriend":Landroid/content/pm/ResolveInfo;
    :cond_15
    move-object/from16 v32, v28

    .local v32, "weibo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 263
    .end local v32    # "weibo":Landroid/content/pm/ResolveInfo;
    :cond_16
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string/jumbo v34, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 264
    move-object/from16 v27, v28

    .local v27, "qqFriends":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_0

    .line 271
    .end local v18    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v25    # "pkg":Ljava/lang/String;
    .end local v27    # "qqFriends":Landroid/content/pm/ResolveInfo;
    .end local v28    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 272
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 276
    :cond_18
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 281
    :cond_19
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 282
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 286
    :cond_1a
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 287
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 291
    :cond_1b
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 292
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 296
    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 301
    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 302
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 306
    :cond_1e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 311
    :cond_1f
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 312
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 316
    :cond_20
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 317
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 321
    :cond_21
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 322
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 326
    :cond_22
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 327
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 331
    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 332
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 336
    :cond_24
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v33, 0x0

    .line 337
    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_e
.end method
