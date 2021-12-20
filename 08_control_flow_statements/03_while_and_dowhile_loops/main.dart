// While and do-while
void main() {
  // A while loop evaluates the condition before the loop:
  while (!isDone()) {
    doSomething();
    break; // if we delete it, the method doSomething will print forEver >_-
  }

  // A do-while loop evaluates the condition after the loop:
  do {
    printLine();
  } while (!atEndOfPage());

  // Break and continue
  // Use break to stop looping:
  while (true) {
    if (shutDownRequested()) break;
    processIncomingRequests();
  }

  // Use continue to skip to the next loop iteration:

  List candidates = [];

  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }

  // You might write that example differently if you’re using an Iterable such as a list or set:
  candidates.where((c) => c.yearsExperience >= 5).forEach((c) => c.interview());
}

bool isDone() {
  return false;
}

void doSomething() {
  print('Hell World!');
}

String printLine() {
  return 'Hello There!';
}

bool atEndOfPage() {
  return true;
}

bool shutDownRequested() {
  return true;
}

void processIncomingRequests() {}

void interview() {}
