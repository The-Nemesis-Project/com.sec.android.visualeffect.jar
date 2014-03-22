.class Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;
.super Landroid/os/Handler;
.source "ParticleEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 84
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$000(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    iget-object v0, v0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->access$100(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 85
    :cond_1c
    return-void
.end method
