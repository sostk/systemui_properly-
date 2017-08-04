.class public interface abstract Lcom/meizu/media/music/KeyguardMusicController$IKeyguardMusicCallback;
.super Ljava/lang/Object;
.source "KeyguardMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/KeyguardMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKeyguardMusicCallback"
.end annotation


# virtual methods
.method public abstract onClientChange(Z)V
.end method

.method public abstract onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
.end method

.method public abstract onClientPlaybackStateUpdate(I)V
.end method

.method public abstract onClientPlaybackStateUpdateWithDetails(IIII)V
.end method

.method public abstract onClientTransportControlUpdate(I)V
.end method

.method public abstract onLyricChanged(Ljava/lang/String;)V
.end method
