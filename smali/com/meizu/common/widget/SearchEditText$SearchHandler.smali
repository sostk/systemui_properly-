.class Lcom/meizu/common/widget/SearchEditText$SearchHandler;
.super Landroid/os/Handler;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchHandler"
.end annotation


# instance fields
.field mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/widget/SearchEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/widget/SearchEditText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/meizu/common/widget/SearchEditText;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p1, p0, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/meizu/common/widget/SearchEditText$SearchHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/SearchEditText;

    .line 69
    .local v1, "searchEditText":Lcom/meizu/common/widget/SearchEditText;
    if-eqz v1, :cond_0

    .line 72
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 70
    :cond_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->requestFocus()Z

    .line 75
    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 76
    .local v2, "showInputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 80
    .end local v2    # "showInputManager":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->clearFocus()V

    .line 81
    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    .local v0, "hideImputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Lcom/meizu/common/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
