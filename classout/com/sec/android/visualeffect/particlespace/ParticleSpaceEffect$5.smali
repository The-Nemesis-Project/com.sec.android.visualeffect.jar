.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$5;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$5;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$5;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->unlockFinished()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 345
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 339
    return-void
.end method
