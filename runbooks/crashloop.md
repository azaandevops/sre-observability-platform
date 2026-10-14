# CrashLoopBackOff Runbook

1. Identify the workload.
2. Describe the pod.
3. Review current and previous logs.
4. Check OOMKilled and resource pressure.
5. Check configuration/secret references.
6. Compare the deployment revision with the last known-good version.
7. Roll back if required.
8. Record root cause and corrective action.
