.class public final Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;
.super Ljava/lang/Object;
.source "NfcControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/NfcController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIsInitialized:Z

.field mNfcFilter:Landroid/content/IntentFilter;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mTurningOn:Z


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;I)V
    .locals 0
    .param p1, "adapterState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->setAdapterState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcFilter:Landroid/content/IntentFilter;

    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->setListening(Z)V

    .line 41
    return-void
.end method

.method private getAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private notifyChanged()V
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    .line 115
    .local v0, "callback":Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;
    invoke-direct {p0, v0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V

    goto :goto_0

    .line 113
    .end local v0    # "callback":Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;
    :cond_0
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->isNfcEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->isNfcTurningOn()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;->onNfcStateChanged(ZZ)V

    .line 119
    return-void
.end method

.method private setAdapterState(I)V
    .locals 3
    .param p1, "adapterState"    # I

    .prologue
    .line 124
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 125
    .local v0, "enabled":Z
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 126
    .local v1, "turningOn":Z
    :goto_1
    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mEnabled:Z

    if-ne v2, v0, :cond_2

    iget-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mTurningOn:Z

    if-ne v2, v1, :cond_2

    return-void

    .line 124
    .end local v0    # "enabled":Z
    .end local v1    # "turningOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "turningOn":Z
    goto :goto_1

    .line 127
    :cond_2
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mEnabled:Z

    .line 128
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mTurningOn:Z

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mIsInitialized:Z

    .line 130
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->notifyChanged()V

    .line 123
    return-void
.end method


# virtual methods
.method public addNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V

    .line 49
    return-void
.end method

.method public isNfcEnabled()Z
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v1, "NfcControllerImpl"

    const-string/jumbo v2, "nfc adapter is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->setAdapterState(I)V

    .line 69
    :cond_1
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mEnabled:Z

    return v1
.end method

.method public isNfcTurningOn()Z
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 75
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v1, "NfcControllerImpl"

    const-string/jumbo v2, "nfc adapter is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_0
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mIsInitialized:Z

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->setAdapterState(I)V

    .line 82
    :cond_1
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mTurningOn:Z

    return v1
.end method

.method public removeNfcControllerCallback(Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/flyme/systemui/statusbar/policy/NfcController$NfcControllerCallback;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public setNfcEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->getAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 88
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;ZLandroid/nfc/NfcAdapter;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string/jumbo v1, "NfcControllerImpl"

    const-string/jumbo v2, "nfc adapter is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
