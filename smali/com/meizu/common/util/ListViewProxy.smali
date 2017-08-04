.class public Lcom/meizu/common/util/ListViewProxy;
.super Ljava/lang/Object;
.source "ListViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final ACTION_DRAG_FLAG_NFC_SHARE:I = 0x1

.field public static final ACTION_DRAG_FLAG_NONE:I = 0x0

.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method; = null

.field private static mCheckedAll:Ljava/lang/reflect/Method; = null

.field private static mChoiceActionMode:Ljava/lang/reflect/Field; = null

.field private static mEnableOverScroll:Ljava/lang/reflect/Method; = null

.field private static mGetDragPosition:Ljava/lang/reflect/Method; = null

.field private static mNotifyDragDropAnimType:Ljava/lang/reflect/Method; = null

.field private static mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method; = null

.field private static mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method; = null

.field private static mSetEnableHoldPress:Ljava/lang/reflect/Method; = null

.field private static mStartDragMz:Ljava/lang/reflect/Method; = null

.field private static mUnCheckedAll:Ljava/lang/reflect/Method; = null

.field private static final tag:Ljava/lang/String; = "AbsListViewProxy"


# instance fields
.field protected mAbsList:Landroid/widget/AbsListView;

.field private mIsFlyOS:Z


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "absList"    # Landroid/widget/AbsListView;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    .line 151
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    .line 152
    return-void
.end method

.method private createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getDragPostionAndId([J)V
    .locals 14
    .param p1, "array"    # [J

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 797
    iget-object v9, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    if-nez v9, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    :try_start_0
    sget-object v9, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_2

    .line 807
    :goto_1
    iget-object v9, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 808
    .local v0, "adapter":Landroid/widget/ListAdapter;
    sget-object v9, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    .line 812
    .local v8, "value":Ljava/lang/Object;
    :try_start_1
    sget-object v9, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 821
    .end local v8    # "value":Ljava/lang/Object;
    :goto_2
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 822
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 823
    .local v5, "position":I
    iget-object v9, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    check-cast v0, Landroid/widget/ListAdapter;

    .line 825
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    .line 827
    .local v6, "id":J
    int-to-long v10, v5

    aput-wide v10, p1, v13

    const/4 v9, 0x1

    .line 828
    aput-wide v6, p1, v9

    goto :goto_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "position":I
    .end local v6    # "id":J
    :cond_2
    :try_start_2
    const-class v9, Landroid/widget/AbsListView;

    const-string/jumbo v10, "getDragPosition"

    const/4 v11, 0x0

    .line 800
    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 805
    :catch_0
    move-exception v3

    .line 803
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 804
    sput-object v12, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 819
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 819
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 819
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 818
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static notifyDragDropAnimType(Landroid/view/View;I)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 709
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    .line 714
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 717
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 718
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    return v7

    .line 710
    .end local v1    # "viewClass":Ljava/lang/Class;
    :cond_0
    return v6

    .restart local v1    # "viewClass":Ljava/lang/Class;
    :cond_1
    const-string/jumbo v2, "notifyDragDropAnimType"

    const/4 v3, 0x1

    .line 715
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "notifyDragDropAnimType fail to be invoked"

    .line 721
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    .line 723
    return v6
.end method

.method public static notifyStatusBarNfcShareStateChanged(Landroid/view/View;Z)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "entered"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 735
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    .line 740
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 744
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 745
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    return v7

    .line 736
    .end local v1    # "viewClass":Ljava/lang/Class;
    :cond_0
    return v6

    .restart local v1    # "viewClass":Ljava/lang/Class;
    :cond_1
    const-string/jumbo v2, "notifyStatusBarNfcShareStateChanged"

    const/4 v3, 0x1

    .line 741
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "notifyStatusBarNfcShareStateChanged fail to be invoked"

    .line 748
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    .line 750
    return v6
.end method

.method public static setItemForChecked(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 6
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 764
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v2, v5, :cond_1

    move v1, v3

    .line 765
    .local v1, "isSdkVersion21":Z
    :goto_0
    if-nez p1, :cond_2

    .line 766
    :cond_0
    return v3

    .end local v1    # "isSdkVersion21":Z
    :cond_1
    move v1, v4

    .line 764
    goto :goto_0

    .line 765
    .restart local v1    # "isSdkVersion21":Z
    :cond_2
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_4

    .line 768
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_5

    .line 782
    :cond_3
    return v3

    .line 765
    :cond_4
    if-nez v1, :cond_0

    goto :goto_1

    :cond_5
    const v2, 0x1020001

    .line 769
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 770
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    .line 771
    instance-of v2, v0, Lcom/meizu/common/widget/AnimCheckBox;

    if-nez v2, :cond_6

    .line 774
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v2

    if-gtz v2, :cond_7

    .line 777
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 779
    :goto_3
    return v4

    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_6
    move-object v2, v0

    .line 772
    check-cast v2, Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v2, v4}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    goto :goto_2

    .line 775
    :cond_7
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_3
.end method

.method public static startDragMz(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "myLObject"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 682
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-class v1, Landroid/view/View;

    .line 687
    .local v1, "viewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 691
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 692
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    return v7

    .line 683
    .end local v1    # "viewClass":Ljava/lang/Class;
    :cond_0
    return v6

    .restart local v1    # "viewClass":Ljava/lang/Class;
    :cond_1
    const-string/jumbo v2, "startDragMz"

    const/4 v3, 0x4

    .line 688
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ClipData;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/View$DragShadowBuilder;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v1    # "viewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "startDragMz fail to be invoked"

    .line 695
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    .line 697
    return v6
.end method


# virtual methods
.method public applyMeizuPartitionStyle()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 283
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_1

    .line 298
    :cond_0
    return v5

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    :try_start_0
    const-class v1, Landroid/widget/ListView;

    .line 286
    .local v1, "listViewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 289
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 290
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return v6

    :cond_2
    const-string/jumbo v2, "applyMeizuPartitionStyle"

    const/4 v3, 0x0

    .line 287
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v1    # "listViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "setCenterListContent fail to be invoked"

    .line 293
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    .line 295
    return v5
.end method

.method protected bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public checkedAll()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 538
    iget-boolean v3, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    :try_start_0
    const-class v2, Landroid/widget/ListView;

    .line 550
    .local v2, "listViewClass":Ljava/lang/Class;
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    .line 553
    :goto_0
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 554
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    return v7

    .end local v2    # "listViewClass":Ljava/lang/Class;
    :cond_0
    const/4 v1, 0x0

    .line 539
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 542
    return v7

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v3, "tag"

    const-string/jumbo v4, "the Target is not a ListView"

    .line 545
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return v6

    .restart local v2    # "listViewClass":Ljava/lang/Class;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "checkedAll"

    const/4 v4, 0x0

    .line 551
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 555
    .end local v2    # "listViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    const-string/jumbo v3, "AbsListViewProxy"

    const-string/jumbo v4, "checkedAll fail to be invoked"

    .line 558
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v6
.end method

.method protected dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public finishMultiChoice()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 601
    iget-boolean v3, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .local v1, "actionMode":Landroid/view/ActionMode;
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 607
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    .line 610
    :goto_0
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 611
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ActionMode;

    if-nez v3, :cond_2

    .line 619
    .end local v1    # "actionMode":Landroid/view/ActionMode;
    :goto_1
    if-nez v1, :cond_3

    .line 623
    return v5

    .line 602
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    :cond_0
    return v5

    .restart local v0    # "absListViewClass":Ljava/lang/Class;
    .restart local v1    # "actionMode":Landroid/view/ActionMode;
    :cond_1
    const-string/jumbo v3, "mChoiceActionMode"

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    .end local v1    # "actionMode":Landroid/view/ActionMode;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AbsListViewProxy"

    const-string/jumbo v4, "finishMultiChoice fail to be invoked"

    .line 615
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sput-object v6, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    .line 617
    return v5

    .line 612
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "absListViewClass":Ljava/lang/Class;
    .restart local v1    # "actionMode":Landroid/view/ActionMode;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actionMode":Landroid/view/ActionMode;
    check-cast v1, Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .local v1, "actionMode":Landroid/view/ActionMode;
    goto :goto_1

    .line 620
    .end local v1    # "actionMode":Landroid/view/ActionMode;
    :cond_3
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 621
    return v7
.end method

.method protected getActionItemType(Landroid/view/MenuItem;)I
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 845
    return v0
.end method

.method public getDividerPadding(I)[I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 865
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "methodName":Ljava/lang/String;
    const-string/jumbo v5, "onActionItemDragStart"

    .line 162
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "onActionItemDrop"

    .line 172
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "onActionItemDragEnd"

    .line 174
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "getActionItemType"

    .line 182
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "onDragSelection"

    .line 184
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "topDividerEnabled"

    .line 187
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "dividerEnabled"

    .line 189
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "bottomDeviderEnabled"

    .line 191
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "getDividerPadding"

    .line 193
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 199
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1    # "methodName":Ljava/lang/String;
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    .line 164
    .local v3, "retval":I
    array-length v5, p3

    if-gtz v5, :cond_1

    const/4 v5, 0x2

    .line 167
    new-array v4, v5, [J

    .line 168
    .local v4, "temp":[J
    invoke-direct {p0, v4}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    const/4 v5, 0x0

    .line 169
    aget-wide v6, v4, v5

    long-to-int v5, v6

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v3

    .line 171
    .end local v4    # "temp":[J
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 165
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v3

    goto :goto_1

    .end local v3    # "retval":I
    :cond_2
    const/4 v5, 0x0

    .line 173
    aget-object v5, p3, v5

    check-cast v5, Landroid/view/MenuItem;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDrop(Landroid/view/MenuItem;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "methodName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "methodName":Ljava/lang/String;
    :cond_3
    :try_start_1
    array-length v5, p3

    if-gtz v5, :cond_4

    const/4 v5, 0x2

    .line 178
    new-array v4, v5, [J

    .line 179
    .restart local v4    # "temp":[J
    invoke-direct {p0, v4}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    const/4 v5, 0x0

    .line 180
    aget-wide v6, v4, v5

    long-to-int v5, v6

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto :goto_0

    .end local v4    # "temp":[J
    :cond_4
    const/4 v5, 0x0

    .line 176
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 183
    aget-object v5, p3, v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 185
    aget-object v5, p3, v5

    check-cast v5, Landroid/view/View;

    const/4 v6, 0x1

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/meizu/common/util/ListViewProxy;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 188
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->topDividerEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    .line 190
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->dividerEnabled(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 192
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->bottomDeviderEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    .line 194
    aget-object v5, p3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/meizu/common/util/ListViewProxy;->getDividerPadding(I)[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected onActionItemDragEnd(IJ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 842
    return-void
.end method

.method protected onActionItemDragStart(IJ)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x0

    .line 835
    return v0
.end method

.method protected onActionItemDrop(Landroid/view/MenuItem;IJ)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 839
    return-void
.end method

.method protected onDragSelection(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public setCenterListContent(Z)Z
    .locals 1
    .param p1, "centerContent"    # Z

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public setDelayTopOverScrollEnabled(Z)Z
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 209
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_0

    .line 225
    return v7

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 212
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 216
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return v8

    :cond_1
    const-string/jumbo v2, "setDelayTopOverScrollEnabled"

    const/4 v3, 0x1

    .line 213
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "setDelayTopOverScrollEnabled fail to be invoked"

    .line 220
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sput-object v9, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    .line 222
    return v7
.end method

.method public setDelayTopOverScrollOffset(I)Z
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_0

    .line 251
    return v7

    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 238
    .local v0, "absListViewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 242
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return v8

    :cond_1
    const-string/jumbo v2, "setDelayTopOverScrollOffset"

    const/4 v3, 0x1

    .line 239
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    .end local v0    # "absListViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "setDelayTopOverScrollOffset fail to be invoked"

    .line 246
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sput-object v9, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    .line 248
    return v7
.end method

.method public setDividerFilterListener()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 458
    iget-boolean v7, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v7, :cond_1

    .line 459
    :cond_0
    return v11

    .line 458
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    :try_start_0
    const-string/jumbo v7, "android.widget.ListView$DividerFilter"

    .line 464
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 475
    :goto_0
    const/4 v6, 0x0

    .line 477
    .local v6, "result":Z
    :try_start_1
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 478
    .local v1, "dividerFilterListener":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 489
    .end local v1    # "dividerFilterListener":Ljava/lang/Object;
    :goto_1
    return v6

    .end local v6    # "result":Z
    :cond_2
    :try_start_2
    const-class v7, Landroid/widget/ListView;

    const-string/jumbo v8, "setDividerFilterListener"

    const/4 v9, 0x1

    .line 466
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 474
    .end local v0    # "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 472
    .local v0, "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object v12, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    .line 473
    return v11

    .line 479
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "DividerFilterListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "dividerFilterListener":Ljava/lang/Object;
    .restart local v6    # "result":Z
    :cond_3
    :try_start_3
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 480
    const/4 v6, 0x1

    goto :goto_1

    .line 488
    .end local v1    # "dividerFilterListener":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 483
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 485
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 487
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDividerPaddingsListener()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 498
    iget-boolean v7, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v7, :cond_1

    .line 499
    :cond_0
    return v11

    .line 498
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    :try_start_0
    const-string/jumbo v7, "android.widget.ListView$DividerPadding"

    .line 504
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 505
    .local v0, "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 515
    :goto_0
    const/4 v6, 0x0

    .line 517
    .local v6, "result":Z
    :try_start_1
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 518
    .local v1, "dividerPaddingListener":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 529
    .end local v1    # "dividerPaddingListener":Ljava/lang/Object;
    :goto_1
    return v6

    .end local v6    # "result":Z
    :cond_2
    :try_start_2
    const-class v7, Landroid/widget/ListView;

    const-string/jumbo v8, "setDividerPadding"

    const/4 v9, 0x1

    .line 506
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 514
    .end local v0    # "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 512
    .local v0, "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object v12, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    .line 513
    return v11

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    .local v0, "DividerPaddingListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "dividerPaddingListener":Ljava/lang/Object;
    .restart local v6    # "result":Z
    :cond_3
    :try_start_3
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 520
    const/4 v6, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "dividerPaddingListener":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 523
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 528
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 525
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 528
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 527
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnableDragSelection(Z)Z
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 367
    iget-boolean v5, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v5, :cond_1

    .line 368
    :cond_0
    return v10

    .line 367
    :cond_1
    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v5, v5, Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 372
    :try_start_0
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 382
    :goto_0
    const/4 v4, 0x0

    .line 385
    .local v4, "result":Z
    :try_start_1
    sget-object v5, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 386
    const/4 v4, 0x1

    .line 395
    :goto_1
    return v4

    .end local v4    # "result":Z
    :cond_2
    :try_start_2
    const-class v5, Landroid/widget/ListView;

    const-string/jumbo v6, "setEnableDragSelection"

    const/4 v7, 0x1

    .line 373
    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    sput-object v11, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    .line 379
    return v10

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "result":Z
    :catch_1
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 392
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnableDragSelectionListener()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 406
    iget-boolean v7, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v7, :cond_1

    .line 407
    :cond_0
    return v11

    .line 406
    :cond_1
    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    :try_start_0
    const-string/jumbo v7, "android.widget.ListView$OnDragSelectListener"

    .line 415
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 417
    .local v1, "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 428
    :goto_0
    const/4 v6, 0x0

    .line 431
    .local v6, "result":Z
    :try_start_1
    invoke-direct {p0, v1}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 432
    .local v0, "dragSelectionListener":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 448
    .end local v0    # "dragSelectionListener":Ljava/lang/Object;
    :goto_1
    return v6

    .end local v6    # "result":Z
    :cond_2
    :try_start_2
    const-class v7, Landroid/widget/ListView;

    const-string/jumbo v8, "setEnableDragSelection"

    const/4 v9, 0x1

    .line 418
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 426
    .end local v1    # "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 424
    .local v1, "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object v12, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    .line 425
    return v11

    .line 437
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dragSelectionListener":Ljava/lang/Object;
    .local v1, "dragSelectionListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "result":Z
    :cond_3
    :try_start_3
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    .line 438
    const/4 v6, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "dragSelectionListener":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 441
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 446
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 443
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 446
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 445
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnableHoldPress(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 632
    iget-boolean v1, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v1, :cond_0

    .line 636
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 639
    :goto_0
    sget-object v1, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    return v7

    .line 633
    :cond_0
    return v6

    :cond_1
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "setEnableHoldPress"

    const/4 v3, 0x1

    .line 637
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    const-string/jumbo v1, "AbsListViewProxy"

    const-string/jumbo v2, "mSetEnableHoldPress fail to be invoked"

    .line 643
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v6
.end method

.method public setEnableOverScroll(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 654
    iget-boolean v1, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v1, :cond_0

    .line 658
    :try_start_0
    sget-object v1, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 661
    :goto_0
    sget-object v1, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return v7

    .line 655
    :cond_0
    return v6

    :cond_1
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "setEnableOverScroll"

    const/4 v3, 0x1

    .line 659
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Exception;
    sput-object v8, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    const-string/jumbo v1, "AbsListViewProxy"

    const-string/jumbo v2, "mEnableOverScroll fail to be invoked"

    .line 665
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v6
.end method

.method public setEnabledMultiChoice()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 312
    iget-boolean v7, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v7, :cond_0

    :try_start_0
    const-string/jumbo v7, "android.widget.AbsListView$OnItemDragListener"

    .line 320
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 321
    .local v1, "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 336
    :goto_0
    invoke-direct {p0, v1}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, "dragListener":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 339
    .local v6, "result":Z
    if-nez v0, :cond_2

    .line 355
    :goto_1
    return v6

    .line 313
    .end local v0    # "dragListener":Ljava/lang/Object;
    .end local v1    # "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "result":Z
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 314
    return v9

    .restart local v1    # "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-class v7, Landroid/widget/AbsListView;

    const-string/jumbo v8, "setItemDragListener"

    const/4 v9, 0x1

    .line 322
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 333
    .end local v1    # "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 331
    .local v1, "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sput-object v12, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    .line 332
    return v11

    .line 342
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dragListener":Ljava/lang/Object;
    .local v1, "dragListenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "result":Z
    :cond_2
    :try_start_2
    sget-object v7, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v7, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 345
    const/4 v6, 0x1

    goto :goto_1

    .line 352
    :catch_1
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v5

    .line 351
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method protected topDividerEnabled()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    return v0
.end method

.method public unCheckedAll()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 573
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_1

    :try_start_0
    const-class v1, Landroid/widget/ListView;

    .line 582
    .local v1, "listViewClass":Ljava/lang/Class;
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 585
    :goto_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 586
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return v6

    .end local v1    # "listViewClass":Ljava/lang/Class;
    :cond_0
    const-string/jumbo v2, "tag"

    const-string/jumbo v3, "unchecked error"

    .line 570
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return v5

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->clearChoices()V

    .line 575
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v5, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 576
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->requestLayout()V

    .line 577
    return v6

    .restart local v1    # "listViewClass":Ljava/lang/Class;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "unCheckedAll"

    const/4 v3, 0x0

    .line 583
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 587
    .end local v1    # "listViewClass":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AbsListViewProxy"

    const-string/jumbo v3, "unCheckedAll fail to be invoked"

    .line 589
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sput-object v7, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    .line 591
    return v5
.end method
