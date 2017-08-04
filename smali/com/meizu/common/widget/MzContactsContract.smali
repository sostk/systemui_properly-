.class public final Lcom/meizu/common/widget/MzContactsContract;
.super Ljava/lang/Object;
.source "MzContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MzContactsContract$MzNetContacts;,
        Lcom/meizu/common/widget/MzContactsContract$MzAccounts;,
        Lcom/meizu/common/widget/MzContactsContract$MzIntents;,
        Lcom/meizu/common/widget/MzContactsContract$MzDisplayPhoto;,
        Lcom/meizu/common/widget/MzContactsContract$MzGroups;,
        Lcom/meizu/common/widget/MzContactsContract$MzQuickContact;,
        Lcom/meizu/common/widget/MzContactsContract$MzSettings;,
        Lcom/meizu/common/widget/MzContactsContract$MzSettingsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzGroupsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds;,
        Lcom/meizu/common/widget/MzContactsContract$MzSearchSnippetColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzPhoneLookup;,
        Lcom/meizu/common/widget/MzContactsContract$MzData;,
        Lcom/meizu/common/widget/MzContactsContract$MzRawContactColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzContacts;,
        Lcom/meizu/common/widget/MzContactsContract$MzContactColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzContactOptionsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzDirectory;
    }
.end annotation


# static fields
.field public static final ALLOW_CALLLOGS_PARAM_KEY:Ljava/lang/String; = "allow_calllogs"

.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

.field public static final HAS_MORE_KEY:Ljava/lang/String; = "has_more"

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final START_PARAM_KEY:Ljava/lang/String; = "start"

.field public static final USE_WEIGHT_ORDER:Ljava/lang/String; = "use_weight_order"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.android.contacts.notify"

    .line 50
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string/jumbo v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    .line 876
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    return-void
.end method

.method private static MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/meizu/common/widget/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 891
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    return-void

    .line 892
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 32
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "snippetStartMatch"    # C
    .param p4, "snippetEndMatch"    # C
    .param p5, "snippetEllipsis"    # Ljava/lang/String;
    .param p6, "snippetMaxTokens"    # I

    .prologue
    .line 778
    if-nez p2, :cond_1

    const/4 v15, 0x0

    .line 779
    .local v15, "lowerQuery":Ljava/lang/String;
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2

    :cond_0
    const/16 v26, 0x0

    .line 781
    return-object v26

    .line 778
    .end local v15    # "lowerQuery":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 779
    .restart local v15    # "lowerQuery":Ljava/lang/String;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 787
    if-nez p1, :cond_4

    const-string/jumbo v14, ""

    .line 788
    .local v14, "lowerDisplayName":Ljava/lang/String;
    :goto_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v21, "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v20, "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/meizu/common/widget/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 791
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_5

    const-string/jumbo v26, "\n"

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, "contentLines":[Ljava/lang/String;
    move-object v4, v6

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-lt v9, v12, :cond_6

    const/16 v26, 0x0

    .line 867
    return-object v26

    .line 787
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "contentLines":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "len$":I
    .end local v14    # "lowerDisplayName":Ljava/lang/String;
    .end local v20    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 791
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lowerDisplayName":Ljava/lang/String;
    .restart local v20    # "nameTokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "nameTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 792
    .local v19, "nameToken":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x0

    .line 793
    return-object v26

    .line 800
    .end local v19    # "nameToken":Ljava/lang/String;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v6    # "contentLines":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_6
    aget-object v5, v4, v9

    .line 801
    .local v5, "contentLine":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 800
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 805
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 806
    .local v13, "lineTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v25, "tokenOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v25

    invoke-static {v5, v13, v0}, Lcom/meizu/common/widget/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 812
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, "markedTokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    .local v7, "firstToken":I
    const/4 v11, -0x1

    .local v11, "lastToken":I
    const/4 v8, 0x0

    .line 816
    .local v8, "i":I
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_9

    const/16 v26, -0x1

    .line 843
    move/from16 v0, v26

    if-le v7, v0, :cond_7

    .line 844
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v23, "sb":Ljava/lang/StringBuilder;
    if-gtz v7, :cond_c

    .line 848
    :goto_4
    move v8, v7

    :goto_5
    if-lt v8, v11, :cond_d

    .line 860
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v11, v0, :cond_f

    .line 863
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    return-object v26

    .line 817
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 818
    .local v24, "token":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 819
    .local v16, "lowerToken":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 838
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 823
    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v26, -0x1

    .line 828
    move/from16 v0, v26

    if-ne v7, v0, :cond_a

    const/16 v26, 0x0

    .line 829
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    sub-int v27, v8, v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 833
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v26

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v27

    add-int v27, v27, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_7

    .line 846
    .end local v16    # "lowerToken":Ljava/lang/String;
    .end local v24    # "token":Ljava/lang/String;
    .restart local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 849
    :cond_d
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 850
    .local v17, "markedToken":Ljava/lang/String;
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 851
    .local v22, "originalToken":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    add-int/lit8 v26, v11, -0x1

    move/from16 v0, v26

    if-lt v8, v0, :cond_e

    .line 848
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 855
    :cond_e
    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    add-int v27, v27, v26

    add-int/lit8 v26, v8, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 861
    .end local v17    # "markedToken":Ljava/lang/String;
    .end local v22    # "originalToken":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method
