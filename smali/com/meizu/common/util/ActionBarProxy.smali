.class public Lcom/meizu/common/util/ActionBarProxy;
.super Ljava/lang/Object;
.source "ActionBarProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;,
        Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListenerHadAdd:Z

.field private mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

.field private mOnBackButtonEnableChangeListenerClazz:Ljava/lang/Class;

.field private mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTopBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

.field private mProxidedActionBar:Landroid/app/ActionBar;

.field private mTopBackBtnListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

.field private mTopBackButtonColor:I

.field private mTopBackButtonEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/meizu/common/util/ActionBarProxy;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar;)V
    .locals 4
    .param p1, "proxied"    # Landroid/app/ActionBar;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/common/util/ActionBarProxy;->mListenerHadAdd:Z

    .line 46
    iput-object p1, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    .line 47
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "android.app.ActionBar$OnBackButtonEnableChangeListener"

    .line 51
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListenerClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "the ActionBar proxied can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init ActionBarProxy error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/util/ActionBarProxy;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/ActionBarProxy;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/util/ActionBarProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/util/ActionBarProxy;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/common/util/ActionBarProxy;->setHomeAsUpIndicator(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/util/ActionBarProxy;)Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/ActionBarProxy;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnTopBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/util/ActionBarProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/util/ActionBarProxy;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/common/util/ActionBarProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/util/ActionBarProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonEnabled:Z

    return p1
.end method

.method private setHomeAsUpIndicator(I)V
    .locals 5
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 331
    iget v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonColor:I

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 335
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    .local v1, "indicator":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/LightingColorFilter;

    iget v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonColor:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 337
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "indicator":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)Z
    .locals 3
    .param p1, "listener"    # Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    return v1

    .line 164
    :cond_1
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    :goto_1
    return v2

    .line 167
    :cond_2
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/ActionBarProxy;->setOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    return v2

    .line 167
    :cond_3
    return v1

    .line 171
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
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
    const/4 v9, 0x0

    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "methodName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "onBackButtonEnableChange"

    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v9

    .line 63
    :cond_1
    iget-object v6, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    .line 65
    aget-object v6, p3, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 66
    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 68
    .local v3, "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "numListeners":I
    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-interface {v6, v1}, Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;->onBackButtonEnableChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "enabled":Z
    .end local v2    # "i":I
    .end local v3    # "listenersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;>;"
    .end local v5    # "numListeners":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActionBarProxy invoke error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isBackButtonEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 195
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "isBackButtonEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 199
    .local v1, "isBackButtonEnabledMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    iget-object v2, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 195
    .end local v1    # "isBackButtonEnabledMethod":Ljava/lang/reflect/Method;
    :cond_0
    return v5

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    return v5
.end method

.method public removeOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 188
    return-void

    .line 185
    :cond_0
    return-void
.end method

.method public setActionBarViewCollapsable(Landroid/app/Activity;Z)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "collapsable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 389
    if-nez p1, :cond_0

    .line 397
    sget-object v2, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setActionBarViewCollapsable fail to be invoked. Caused by activity which is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return v1

    .line 390
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_bar"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "actionbarView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 395
    sget-object v2, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setActionBarViewCollapsable fail to be invoked. Caused by actionbarView not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    :cond_1
    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    const/4 v1, 0x1

    return v1

    :cond_2
    const/16 v1, 0x8

    .line 392
    goto :goto_1
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 9
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 368
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-nez v3, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v7

    .line 368
    :cond_1
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    :try_start_0
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v3, "setBackButtonDrawable"

    const/4 v4, 0x1

    .line 371
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 372
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 373
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return v8

    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBackButtonDrawable fail to be invoked. Caused by :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabledBackWhenOverlay(Z)Z
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 347
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-nez v3, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v7

    .line 347
    :cond_1
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v3, "setEnabledBackWhenOverlay"

    const/4 v4, 0x1

    .line 350
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 351
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 352
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return v8

    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/meizu/common/util/ActionBarProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnabledBackWhenOverlay fail to be invoked. Caused by :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)Z
    .locals 11
    .param p1, "listener"    # Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 116
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_2

    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "removeListener":Z
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    if-nez v4, :cond_3

    .line 123
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    .line 124
    if-nez p1, :cond_4

    .line 131
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    :cond_1
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "setOnBackButtonEnableChangeListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListenerClazz:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 139
    .local v3, "setOnBackButtonEnableChangeListenerMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 141
    if-nez v2, :cond_7

    .line 144
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListenerClazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListenerClazz:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v4, v5, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    .local v1, "proxiedListener":Ljava/lang/Object;
    if-eqz v1, :cond_8

    .line 150
    .end local v1    # "proxiedListener":Ljava/lang/Object;
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return v10

    .line 117
    .end local v2    # "removeListener":Z
    .end local v3    # "setOnBackButtonEnableChangeListenerMethod":Ljava/lang/reflect/Method;
    :cond_2
    return v9

    .line 120
    .restart local v2    # "removeListener":Z
    :cond_3
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 128
    :goto_3
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnBackButtonEnableChangeListeners:Ljava/util/ArrayList;

    goto :goto_3

    .line 132
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .restart local v3    # "setOnBackButtonEnableChangeListenerMethod":Ljava/lang/reflect/Method;
    :cond_7
    const/4 v1, 0x0

    .line 142
    .restart local v1    # "proxiedListener":Ljava/lang/Object;
    goto :goto_2

    .line 148
    :cond_8
    return v9

    .line 151
    .end local v1    # "proxiedListener":Ljava/lang/Object;
    .end local v3    # "setOnBackButtonEnableChangeListenerMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    return v9
.end method

.method public setOnTopBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnTopBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    .line 303
    return-void
.end method

.method public setTopBackButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonColor:I

    .line 312
    iget-boolean v0, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonEnabled:Z

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    sget v0, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_top:I

    invoke-direct {p0, v0}, Lcom/meizu/common/util/ActionBarProxy;->setHomeAsUpIndicator(I)V

    goto :goto_0
.end method

.method public setTopBackButtonColorRes(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 326
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/util/ActionBarProxy;->setTopBackButtonColor(I)V

    .line 327
    return-void

    .line 324
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setTopBackButtonEnabled(ZZ)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "isForced"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x12

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/meizu/common/util/ActionBarProxy;->isBackButtonEnabled()Z

    move-result v2

    .line 223
    .local v2, "isBackButtonEnabled":Z
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 226
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz p2, :cond_4

    .line 227
    :cond_0
    move v1, p1

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 234
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 235
    iput-boolean v1, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackButtonEnabled:Z

    .line 236
    if-nez v1, :cond_7

    .line 241
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_8

    .line 246
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnTopBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    if-nez v3, :cond_9

    .line 250
    :goto_2
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackBtnListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    if-eqz v3, :cond_a

    .line 278
    :goto_3
    iget-boolean v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mListenerHadAdd:Z

    if-eqz v3, :cond_b

    .line 290
    :cond_2
    :goto_4
    if-eqz p1, :cond_d

    .line 294
    :cond_3
    :goto_5
    return-void

    .line 226
    :cond_4
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 228
    if-nez v2, :cond_6

    .line 231
    :cond_5
    const/4 v1, 0x1

    .local v1, "enabledToSet":Z
    goto :goto_0

    .line 228
    .end local v1    # "enabledToSet":Z
    :cond_6
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_5

    .line 229
    const/4 v1, 0x0

    .restart local v1    # "enabledToSet":Z
    goto :goto_0

    .line 237
    .end local v1    # "enabledToSet":Z
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    .line 238
    sget v3, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_top:I

    invoke-direct {p0, v3}, Lcom/meizu/common/util/ActionBarProxy;->setHomeAsUpIndicator(I)V

    goto :goto_1

    .line 242
    :cond_8
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    sget v4, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_transparent:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_1

    .line 247
    :cond_9
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mOnTopBackButtonEnableChangeListener:Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;

    invoke-interface {v3, v1}, Lcom/meizu/common/util/ActionBarProxy$OnTopBackButtonEnableChangeListener;->onTopBackButtonEnableChange(Z)V

    goto :goto_2

    .line 251
    :cond_a
    new-instance v3, Lcom/meizu/common/util/ActionBarProxy$1;

    invoke-direct {v3, p0}, Lcom/meizu/common/util/ActionBarProxy$1;-><init>(Lcom/meizu/common/util/ActionBarProxy;)V

    iput-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackBtnListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    goto :goto_3

    .line 279
    :cond_b
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackBtnListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-virtual {p0, v3}, Lcom/meizu/common/util/ActionBarProxy;->addOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 286
    iput-boolean v7, p0, Lcom/meizu/common/util/ActionBarProxy;->mListenerHadAdd:Z

    goto :goto_4

    .line 280
    :cond_c
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 281
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 282
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_2

    .line 283
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mProxidedActionBar:Landroid/app/ActionBar;

    sget v4, Lcom/meizu/common/R$drawable;->mz_ic_ab_back_transparent:I

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    goto :goto_4

    .line 290
    :cond_d
    if-eqz p2, :cond_3

    iget-boolean v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mListenerHadAdd:Z

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/meizu/common/util/ActionBarProxy;->mTopBackBtnListener:Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;

    invoke-virtual {p0, v3}, Lcom/meizu/common/util/ActionBarProxy;->removeOnBackButtonEnableChangeListener(Lcom/meizu/common/util/ActionBarProxy$OnBackButtonEnableChangeListener;)V

    .line 292
    iput-boolean v5, p0, Lcom/meizu/common/util/ActionBarProxy;->mListenerHadAdd:Z

    goto :goto_5
.end method
